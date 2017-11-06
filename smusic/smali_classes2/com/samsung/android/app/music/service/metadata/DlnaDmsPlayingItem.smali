.class public final Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;
.super Ljava/lang/Object;
.source "DlnaDmsPlayingItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# static fields
.field private static final DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;


# instance fields
.field private final mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final mPlayingUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "provider_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "extension"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "provider_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "seed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    .locals 0
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "playingUri"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->mPlayingUri:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private static getId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/net/Uri;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listCount"    # I
    .param p3, "listPosition"    # I
    .param p4, "playDirection"    # I

    .prologue
    .line 27
    sget-object v4, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 27
    .local v12, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 29
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 74
    if-eqz v12, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 32
    :cond_3
    :try_start_2
    const-string/jumbo v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 33
    .local v27, "title":Ljava/lang/String;
    const-string v2, "album"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, "album":Ljava/lang/String;
    const-string v2, "artist"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, "artist":Ljava/lang/String;
    const-string v2, "album_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 36
    .local v9, "albumId":I
    const-string v2, "duration"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 37
    .local v16, "duration":J
    const-string v2, "mime_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 38
    .local v24, "mimeType":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 39
    .local v25, "playingUri":Ljava/lang/String;
    const-string v2, "extension"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 40
    .local v15, "extension":Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 41
    .local v22, "id":J
    const-string v2, "_size"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 42
    .local v18, "fileSize":J
    const-string v2, "provider_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 43
    .local v14, "dmsName":Ljava/lang/String;
    const-string v2, "provider_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 44
    .local v13, "dmsId":Ljava/lang/String;
    const-string/jumbo v2, "seed"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 45
    .local v26, "seed":Ljava/lang/String;
    const-string v2, "genre_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 47
    .local v20, "genre":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->getId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 49
    .local v21, "idString":Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    .line 50
    .local v11, "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    const-string v2, "android.media.metadata.TITLE"

    move-object/from16 v0, v27

    invoke-virtual {v11, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 51
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v11, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 52
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v11, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 53
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v11, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 54
    const-string v2, "android.media.metadata.GENRE"

    move-object/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 56
    const-string v2, "android.media.metadata.COMPILATION"

    invoke-virtual {v11, v2, v14}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 58
    const-string v2, "android.media.metadata.AUTHOR"

    move-object/from16 v0, v26

    invoke-virtual {v11, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 62
    const-string v2, "android.media.metadata.MEDIA_ID"

    move-object/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 64
    const-string v2, "android.media.metadata.DURATION"

    move-wide/from16 v0, v16

    invoke-virtual {v11, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 65
    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move/from16 v0, p2

    int-to-long v4, v0

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 66
    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 67
    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    move/from16 v0, p4

    int-to-long v4, v0

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 68
    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    int-to-long v4, v9

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 69
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-wide/32 v4, 0x20004

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 70
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v2, :cond_4

    .line 71
    const-string v2, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 73
    :cond_4
    new-instance v2, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    if-eqz v12, :cond_1

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 27
    .end local v8    # "album":Ljava/lang/String;
    .end local v9    # "albumId":I
    .end local v10    # "artist":Ljava/lang/String;
    .end local v11    # "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .end local v13    # "dmsId":Ljava/lang/String;
    .end local v14    # "dmsName":Ljava/lang/String;
    .end local v15    # "extension":Ljava/lang/String;
    .end local v16    # "duration":J
    .end local v18    # "fileSize":J
    .end local v20    # "genre":Ljava/lang/String;
    .end local v21    # "idString":Ljava/lang/String;
    .end local v22    # "id":J
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v25    # "playingUri":Ljava/lang/String;
    .end local v26    # "seed":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    :catchall_0
    move-exception v3

    move-object/from16 v28, v3

    move-object v3, v2

    move-object/from16 v2, v28

    :goto_1
    if-eqz v12, :cond_6

    if-eqz v3, :cond_7

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_2
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->mPlayingUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
