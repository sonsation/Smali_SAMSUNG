.class public Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;
.super Ljava/lang/Object;
.source "SFinderPlayUtils.java"


# static fields
.field private static final EXTRA_GALAXY_FINDER_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field private static final EXTRA_GALAXY_FINDER_FROM:Ljava/lang/String; = "intent_extra_from"

.field private static final EXTRA_GALAXY_FINDER_TARGET_TYPE:Ljava/lang/String; = "intent_extra_target_type"

.field private static final GALAXY_FINDER_GLOBAL_SEARCH:Ljava/lang/String; = "global_search"

.field private static final GALAXY_FINDER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToListType(I)I
    .locals 1
    .param p0, "galaxyFinderType"    # I

    .prologue
    .line 142
    packed-switch p0, :pswitch_data_0

    .line 156
    const v0, 0x110001

    .line 159
    .local v0, "listType":I
    :goto_0
    return v0

    .line 144
    .end local v0    # "listType":I
    :pswitch_0
    const v0, 0x110001

    .line 145
    .restart local v0    # "listType":I
    goto :goto_0

    .line 147
    .end local v0    # "listType":I
    :pswitch_1
    const v0, 0x100002

    .line 148
    .restart local v0    # "listType":I
    goto :goto_0

    .line 150
    .end local v0    # "listType":I
    :pswitch_2
    const v0, 0x100003

    .line 151
    .restart local v0    # "listType":I
    goto :goto_0

    .line 153
    .end local v0    # "listType":I
    :pswitch_3
    const v0, 0x100004

    .line 154
    .restart local v0    # "listType":I
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertToMusicType(I)Ljava/lang/String;
    .locals 1
    .param p0, "galaxyFinderType"    # I

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 134
    const-string/jumbo v0, "title"

    .line 137
    .local v0, "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 122
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "title"

    .line 123
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1
    const-string v0, "album"

    .line 126
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_2
    const-string v0, "artist"

    .line 129
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "playlist"

    .line 132
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getKeyword(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-object v5

    .line 169
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 171
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "artist COLLATE NOCASE = ? "

    .line 191
    .local v3, "selection":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 192
    .local v7, "keyword":Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v8

    move-object v0, p0

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    const-string v0, "PlayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyword: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :cond_1
    :goto_2
    const-string v0, "PlayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyword() - keyword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 200
    goto :goto_0

    .line 174
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "keyword":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->CONTENT_URI:Landroid/net/Uri;

    .line 175
    .restart local v1    # "uri":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 176
    .restart local v2    # "projection":[Ljava/lang/String;
    const-string v3, "album COLLATE NOCASE = ? "

    .line 177
    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 179
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavoritePlaylist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    .line 184
    .restart local v1    # "uri":Landroid/net/Uri;
    :goto_3
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 185
    .restart local v2    # "projection":[Ljava/lang/String;
    const-string v3, "name COLLATE NOCASE = ? "

    .line 186
    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 198
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "keyword":Ljava/lang/String;
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :catchall_0
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_5
    throw v0

    :catch_2
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x100002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static isExistContents(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "search"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 204
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v7

    .line 207
    .local v2, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 208
    .local v4, "selectionArgs":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    move v0, v7

    .line 237
    :goto_0
    return v0

    .line 210
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    .line 230
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    .line 236
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_2
    move v0, v8

    goto :goto_0

    .line 213
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :sswitch_1
    const-string v3, "artist=? COLLATE NOCASE"

    .line 214
    .restart local v3    # "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p2, v4, v7

    .line 215
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v3    # "selection":Ljava/lang/String;
    :sswitch_2
    const-string v3, "album=? COLLATE NOCASE"

    .line 218
    .restart local v3    # "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p2, v4, v7

    .line 219
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 221
    .end local v3    # "selection":Ljava/lang/String;
    :sswitch_3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    .line 222
    const-string v3, "name=? COLLATE NOCASE"

    .line 223
    .restart local v3    # "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p2, v4, v7

    .line 224
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 236
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    move v0, v7

    .line 237
    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 229
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    :goto_4
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_2
        0x100003 -> :sswitch_1
        0x100004 -> :sswitch_3
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method public static play(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v10, "intent_extra_data_key"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "search":Ljava/lang/String;
    const-string v10, "intent_extra_from"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "from":Ljava/lang/String;
    const-string v10, "com.samsung.android.app.galaxyfinder"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 49
    .local v8, "startFromGalaxyFinder":Z
    const-string v10, "PlayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SFinderPlayUtils play: intent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " search "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v10, "global_search"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "dataName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v10, "title"

    invoke-static {p0, v10, v2}, Lcom/samsung/android/app/music/common/util/player/PlayUtils;->playVia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v2    # "dataName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz v8, :cond_0

    .line 60
    const-string v10, "intent_extra_target_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "finderType":I
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->convertToMusicType(I)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "type":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->convertToListType(I)I

    move-result v6

    .line 65
    .local v6, "listType":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->isExistContents(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 66
    const v10, 0x7f0a020b

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 67
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    :cond_2
    sparse-switch v6, :sswitch_data_0

    .line 98
    invoke-static {p0, v6, v7}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->getKeyword(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-static {p0, v6, v10, v7}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_0
    invoke-static {p0, v9, v7}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->playViaSFinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityWithoutAnimation(Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    :sswitch_1
    invoke-static {p0, v6, v7}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->getKeyword(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v7}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :sswitch_2
    :try_start_0
    invoke-static {p0, v6, v7}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->getKeyword(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .local v0, "albumId":J
    const/4 v10, 0x0

    invoke-static {p0, v0, v1, v7, v10}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0    # "albumId":J
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v10, "PlayUtils"

    const-string v11, "There is no correct album id"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_2
        0x100003 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method private static playViaSFinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "search"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "PlayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playViaGalaxyFinder() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->playById(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "album"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string/jumbo v0, "playlist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0
.end method
