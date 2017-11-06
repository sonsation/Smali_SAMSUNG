.class public Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;
.super Ljava/lang/Object;
.source "LastPlayInfoServiceStub.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LastPlayInfoServiceStub"

.field private static final MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

.field private static final SERVICE_MOD:I = 0x1

.field private static final SERVICE_RADIO:I = 0x2

.field private static final UNDEFINED_ID:I = -0x1


# instance fields
.field private mBinder:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;

.field private mContext:Landroid/content/Context;

.field private mSourceAlbumIdPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://media/external/audio/albumart"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;-><init>(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mBinder:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getLastActiveState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private getArtworkUri(IJ)Ljava/lang/String;
    .locals 20
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 125
    const/4 v12, 0x0

    .line 126
    .local v12, "artworkUri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 127
    .local v5, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 162
    :cond_0
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v6, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mSourceAlbumIdPair:Landroid/util/Pair;

    move-object v13, v12

    .line 163
    .end local v12    # "artworkUri":Ljava/lang/String;
    .local v13, "artworkUri":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 129
    .end local v13    # "artworkUri":Ljava/lang/String;
    .restart local v12    # "artworkUri":Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getCachedArtworkUri(J)Ljava/lang/String;

    move-result-object v12

    .line 130
    if-eqz v12, :cond_1

    move-object v13, v12

    .line 131
    .end local v12    # "artworkUri":Ljava/lang/String;
    .restart local v13    # "artworkUri":Ljava/lang/String;
    goto :goto_1

    .line 133
    .end local v13    # "artworkUri":Ljava/lang/String;
    .restart local v12    # "artworkUri":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "image_url_big"

    aput-object v8, v6, v7

    const-string/jumbo v7, "thumbnail_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 136
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 133
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .local v14, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 137
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v12

    .line 140
    :cond_2
    if-eqz v14, :cond_0

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 133
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :catchall_0
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v4

    move-object/from16 v4, v18

    :goto_2
    if-eqz v14, :cond_4

    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v4

    :catch_2
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 143
    .end local v14    # "c":Landroid/database/Cursor;
    :sswitch_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getCachedArtworkUri(J)Ljava/lang/String;

    move-result-object v12

    .line 144
    if-eqz v12, :cond_6

    move-object v13, v12

    .line 145
    .end local v12    # "artworkUri":Ljava/lang/String;
    .restart local v13    # "artworkUri":Ljava/lang/String;
    goto :goto_1

    .line 147
    .end local v13    # "artworkUri":Ljava/lang/String;
    .restart local v12    # "artworkUri":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v9, "source_album_id"

    aput-object v9, v8, v4

    const-string v9, "album_id=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 151
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v11, 0x0

    .line 148
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 147
    .restart local v14    # "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 152
    if-eqz v14, :cond_7

    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 153
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 154
    .local v16, "sourceAlbumId":J
    sget-object v4, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 155
    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v12

    .line 158
    .end local v16    # "sourceAlbumId":J
    :cond_7
    if-eqz v14, :cond_0

    if-eqz v6, :cond_8

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 147
    :catch_4
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    :catchall_1
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v4

    move-object/from16 v4, v18

    :goto_4
    if-eqz v14, :cond_9

    if-eqz v6, :cond_a

    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_9
    :goto_5
    throw v4

    :catch_5
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v4

    goto :goto_4

    .line 140
    :catchall_3
    move-exception v4

    goto/16 :goto_2

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_1
        0x80002 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCachedArtworkUri(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mSourceAlbumIdPair:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mSourceAlbumIdPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mSourceAlbumIdPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastActiveState()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    .line 103
    .local v0, "activeQueueType":I
    const-string v2, "LastPlayInfoServiceStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastActiveState : getLastActiveState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-ne v0, v1, :cond_0

    .line 106
    const/4 v1, 0x2

    .line 108
    :cond_0
    return v1
.end method

.method private getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 22

    .prologue
    .line 54
    new-instance v7, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    invoke-direct {v7}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;-><init>()V

    .line 56
    .local v7, "lastPlayInfo":Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 57
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v19

    new-instance v20, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 60
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v21

    .line 59
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v6}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v11

    .line 62
    .local v11, "playerQueue":Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 63
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 64
    invoke-interface {v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v8

    .line 65
    .local v8, "audioId":J
    invoke-interface {v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 66
    const-wide/16 v18, -0x1

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTrack(Landroid/content/Context;J)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v10

    .line 68
    .local v10, "modTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-eqz v10, :cond_0

    .line 69
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, "sourceAlbumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Album;->getAlbumId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 71
    .local v4, "albumId":J
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v18

    const-string v19, "@"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 72
    const v18, 0x10001

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getArtworkUri(IJ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setModAlbumartUrl(Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setModTrackTitle(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setModArtistName(Ljava/lang/String;)V

    .line 78
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "radio://mod?action=play&target=song&trackid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 79
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, "uriStr":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setModDeeplinkUrl(Ljava/lang/String;)V

    .line 84
    .end local v4    # "albumId":J
    .end local v10    # "modTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v16    # "sourceAlbumId":Ljava/lang/String;
    .end local v17    # "uriStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.common.service.last_radio_track_id"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, "radioTrackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.common.service.last_station_id"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "radioStationId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13, v15}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v14

    .line 87
    .local v14, "radioTrack":Lcom/samsung/android/app/music/common/model/Track;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v12

    .line 88
    .local v12, "radioStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    .line 89
    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setRadioStationName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setRadiodTrackTitle(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setRadioArtistName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setRadioAlbumartUrl(Ljava/lang/String;)V

    .line 93
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "radio://main?action=play&stationid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&trackid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 95
    .restart local v17    # "uriStr":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setRadioDeeplinkUrl(Ljava/lang/String;)V

    .line 97
    .end local v17    # "uriStr":Ljava/lang/String;
    :cond_1
    const-string v18, "LastPlayInfoServiceStub"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getLastPlayInfo"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v7

    .line 74
    .end local v12    # "radioStation":Lcom/samsung/android/app/music/common/model/Station;
    .end local v13    # "radioStationId":Ljava/lang/String;
    .end local v14    # "radioTrack":Lcom/samsung/android/app/music/common/model/Track;
    .end local v15    # "radioTrackId":Ljava/lang/String;
    .restart local v4    # "albumId":J
    .restart local v10    # "modTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .restart local v16    # "sourceAlbumId":Ljava/lang/String;
    :cond_2
    const v18, 0x80002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->getArtworkUri(IJ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->setModAlbumartUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isPlaying()Z
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v1

    .line 115
    .local v1, "activeQueueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadioPlaying()Z

    move-result v0

    .line 120
    .local v0, "IsPlaying":Z
    :goto_0
    const-string v2, "LastPlayInfoServiceStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying : IsPlaying = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v0

    .line 118
    .end local v0    # "IsPlaying":Z
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    .restart local v0    # "IsPlaying":Z
    goto :goto_0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->mBinder:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;

    return-object v0
.end method
