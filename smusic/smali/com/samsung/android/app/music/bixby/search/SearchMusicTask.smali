.class public final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerNameQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreNameQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$FolderQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ArtistQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AlbumQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AllTrackQueryArgs;,
        Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listType"    # I
    .param p4, "l"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;)V

    .line 31
    return-void
.end method

.method private getPlaylistAudioIds(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .line 173
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "title != \'\'"

    .line 175
    .local v3, "selection":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v6, "audioIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 177
    .local v8, "id":J
    const-string v0, "local"

    .line 178
    invoke-static {v8, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 181
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 187
    :cond_2
    if-eqz v7, :cond_1

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 184
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 179
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :catchall_0
    move-exception v4

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    :goto_3
    if-eqz v7, :cond_5

    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v0

    :cond_6
    if-eqz v7, :cond_1

    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 189
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "id":J
    :cond_9
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    .line 190
    .local v10, "size":I
    sget-object v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlaylistAudioIds() - size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", playlistIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-nez v10, :cond_a

    .line 193
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 195
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 187
    .end local v10    # "size":I
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "id":J
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private getPlaylistIds([Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "keywords"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v2

    .line 131
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v11, v0

    .line 132
    .local v11, "keywordsLength":I
    new-array v6, v11, [Ljava/lang/String;

    .line 134
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_1

    .line 136
    if-nez v10, :cond_0

    .line 137
    const-string v2, "name"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " LIKE ? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, p1, v10

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 135
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const-string v2, "AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "name"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " LIKE ? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 146
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 147
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 148
    :cond_2
    sget-object v14, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPlaylistIds() - cursor: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v8, :cond_4

    const-string v2, "null"

    .line 149
    :goto_2
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", keywords: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v14, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    const/4 v12, 0x0

    .line 162
    if-eqz v8, :cond_3

    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    return-object v12

    .line 149
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_2

    .line 162
    :catch_0
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 153
    :cond_6
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 154
    .local v9, "count":I
    sget-object v2, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPlaylistIds() - count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", keywords: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 154
    invoke-static {v2, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v12, "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 145
    .end local v9    # "count":I
    .end local v12    # "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :catchall_0
    move-exception v7

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    :goto_5
    if-eqz v8, :cond_7

    if-eqz v7, :cond_a

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_6
    throw v2

    .restart local v9    # "count":I
    .restart local v12    # "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_8
    if-eqz v8, :cond_3

    if-eqz v7, :cond_9

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v9    # "count":I
    .end local v12    # "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_3
    move-exception v14

    invoke-virtual {v7, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_5
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 35
    iget v7, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mListType:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    move-result-object v6

    .line 41
    .local v6, "superSearchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 42
    iget-object v7, v6, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getPlaylistIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getPlaylistAudioIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "playlistAudioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    .line 52
    .local v5, "size":I
    sget-object v7, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground() - size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-nez v5, :cond_3

    .line 73
    .end local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1    # "playlistAudioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "size":I
    .end local v6    # "superSearchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :cond_2
    :goto_0
    return-object v4

    .line 56
    .restart local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v1    # "playlistAudioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "size":I
    .restart local v6    # "superSearchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v3, "resultIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 58
    .local v4, "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    iput-object v3, v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 59
    iput-object v3, v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    goto :goto_0

    .line 63
    .end local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1    # "playlistAudioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "resultIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .end local v5    # "size":I
    .end local v6    # "superSearchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :cond_4
    iget v7, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mListType:I

    const v8, 0x10004

    if-ne v7, v8, :cond_5

    .line 64
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getPlaylistIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 69
    .restart local v4    # "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    iput-object v2, v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 70
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->getPlaylistAudioIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    goto :goto_0

    .line 73
    .end local v2    # "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    .local v2, "uri":Landroid/net/Uri;
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    .line 82
    .local v0, "projection":[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v1, v4

    const-string v3, "album"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "artist"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "genre_name"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "bucket_display_name"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "composer"

    aput-object v4, v1, v3

    .line 86
    .local v1, "searchColumns":[Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v3, v2, v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listType"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    sparse-switch p2, :sswitch_data_0

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;)V

    .line 120
    :cond_0
    return-object v1

    .line 94
    :sswitch_0
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 95
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 97
    :sswitch_1
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AllTrackQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AllTrackQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 98
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 100
    :sswitch_2
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AlbumQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AlbumQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 101
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 103
    :sswitch_3
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ArtistQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ArtistQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 104
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 106
    :sswitch_4
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 107
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 109
    :sswitch_5
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$FolderQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$FolderQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 110
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 112
    :sswitch_6
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerQueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 113
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_2
        0x10003 -> :sswitch_3
        0x10006 -> :sswitch_4
        0x10007 -> :sswitch_5
        0x10008 -> :sswitch_6
        0x10030 -> :sswitch_0
        0x110001 -> :sswitch_1
    .end sparse-switch
.end method
