.class public Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;
.super Ljava/lang/Object;
.source "GoogleSearchPlayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static play(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string v1, "android.intent.extra.focus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 33
    .local v13, "mediaFocus":Ljava/lang/String;
    const-string/jumbo v1, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 37
    .local v15, "query":Ljava/lang/String;
    const-string v1, "android.intent.extra.album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "album":Ljava/lang/String;
    const-string v1, "android.intent.extra.artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "artist":Ljava/lang/String;
    const-string v1, "android.intent.extra.genre"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "genre":Ljava/lang/String;
    const-string v1, "android.intent.extra.playlist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 41
    .local v14, "playlist":Ljava/lang/String;
    const-string v1, "android.intent.extra.radio_channel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "rchannel":Ljava/lang/String;
    const-string v1, "android.intent.extra.title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "title":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 47
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playUnstructuredSearch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 78
    .end local v15    # "query":Ljava/lang/String;
    :goto_0
    return v1

    .line 48
    .restart local v15    # "query":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/*"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 49
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playResumeLastPlaylist(Landroid/content/Context;)V

    .line 52
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playUnstructuredSearch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 57
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/genre"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 59
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .end local v15    # "query":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playGenre(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .restart local v15    # "query":Ljava/lang/String;
    :cond_3
    move-object v15, v4

    goto :goto_1

    .line 60
    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/artist"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .end local v15    # "query":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15, v4}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .restart local v15    # "query":Ljava/lang/String;
    :cond_5
    move-object v15, v3

    goto :goto_2

    .line 63
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/album"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .end local v15    # "query":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v15, v3, v4}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .restart local v15    # "query":Ljava/lang/String;
    :cond_7
    move-object v15, v2

    goto :goto_3

    .line 66
    :cond_8
    const-string/jumbo v1, "vnd.android.cursor.item/audio"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 68
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .end local v15    # "query":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v15, v2, v3, v4}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playSong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .restart local v15    # "query":Ljava/lang/String;
    :cond_9
    move-object v15, v6

    goto :goto_4

    .line 70
    :cond_a
    const-string/jumbo v1, "vnd.android.cursor.item/radio"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v1, p0

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playRadioChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 73
    :cond_b
    const-string/jumbo v1, "vnd.android.cursor.item/playlist"

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 75
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v8, v15

    :goto_5
    move-object/from16 v7, p0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_c
    move-object v8, v14

    goto :goto_5

    .line 78
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static playAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "genre"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-static {p0, v3, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 142
    .local v0, "ids":[J
    array-length v2, v0

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return v1

    .line 145
    :cond_0
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 146
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static playArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "genre"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 132
    invoke-static {p0, v3, v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 133
    .local v0, "ids":[J
    array-length v2, v0

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return v1

    .line 136
    :cond_0
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static playGenre(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-static {p0, v3, v3, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 124
    .local v0, "ids":[J
    array-length v2, v0

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return v1

    .line 127
    :cond_0
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 128
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static playPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlist"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static/range {p0 .. p5}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static playRadioChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "genre"    # Ljava/lang/String;
    .param p4, "rchannel"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method private static playResumeLastPlaylist(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    .line 120
    return-void
.end method

.method private static playSong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 152
    .local v0, "ids":[J
    array-length v2, v0

    if-nez v2, :cond_0

    .line 156
    :goto_0
    return v1

    .line 155
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 156
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static playUnstructuredSearch(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .local v12, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 88
    if-nez v12, :cond_2

    .line 89
    const/4 v2, 0x0

    .line 114
    if-eqz v12, :cond_0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 114
    :catch_0
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    .line 92
    .local v13, "count":I
    if-gtz v13, :cond_4

    .line 93
    const/4 v2, 0x0

    .line 114
    if-eqz v12, :cond_0

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :cond_4
    :try_start_3
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v15, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 97
    .local v15, "rand":Ljava/util/Random;
    invoke-virtual {v15, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    const-string v2, "mime_type"

    .line 99
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "mimeType":Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 102
    .local v10, "artistId":J
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;J)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    .line 114
    if-eqz v12, :cond_0

    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    .end local v10    # "artistId":J
    :cond_6
    :try_start_5
    const-string v2, "album"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 105
    .local v8, "albumId":J
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;J)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    .line 114
    if-eqz v12, :cond_0

    if-eqz v4, :cond_7

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 107
    .end local v8    # "albumId":J
    :cond_8
    :try_start_7
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 108
    .local v16, "songId":J
    const-wide/16 v6, 0x0

    cmp-long v2, v16, v6

    if-lez v2, :cond_a

    .line 109
    const/4 v2, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v16, v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    const/4 v2, 0x1

    .line 114
    if-eqz v12, :cond_0

    if-eqz v4, :cond_9

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v16    # "songId":J
    :cond_a
    if-eqz v12, :cond_b

    if-eqz v4, :cond_c

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 115
    :cond_b
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 114
    :catch_5
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 85
    .end local v13    # "count":I
    .end local v15    # "rand":Ljava/util/Random;
    :catch_6
    move-exception v2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 114
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    :goto_2
    if-eqz v12, :cond_d

    if-eqz v4, :cond_e

    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    :cond_d
    :goto_3
    throw v2

    :catch_7
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method
