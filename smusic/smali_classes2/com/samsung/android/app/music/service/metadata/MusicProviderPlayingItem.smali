.class final Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;
.super Ljava/lang/Object;
.source "MusicProviderPlayingItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# static fields
.field private static final DEFAULT_MEDIA_INFO_COLS:[Ljava/lang/String;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final TAG:Ljava/lang/String; = "SV-Player"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;

.field private final mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

.field private final mSourceId:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist_id"

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

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bit_depth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sampling_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_secretbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "source_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->DEFAULT_MEDIA_INFO_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 134
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mData:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mUri:Landroid/net/Uri;

    .line 136
    iput-object p5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mSourceId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 143
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 144
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 152
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 155
    :cond_1
    return-object p0
.end method

.method private static getId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
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
    .line 46
    sget-object v4, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->DEFAULT_MEDIA_INFO_COLS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 46
    .local v14, "c":Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 48
    if-eqz v14, :cond_0

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 49
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 111
    if-eqz v14, :cond_1

    if-eqz v24, :cond_2

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 51
    :cond_3
    :try_start_2
    const-string/jumbo v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 52
    .local v23, "title":Ljava/lang/String;
    const-string v2, "album"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 53
    .local v21, "rawAlbum":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "album":Ljava/lang/String;
    const-string v2, "artist"

    .line 55
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "artist":Ljava/lang/String;
    const-string v2, "genre_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 58
    .local v18, "genre":Ljava/lang/String;
    const-string v2, "album_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 59
    .local v9, "albumId":I
    const-string v2, "artist_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 60
    .local v11, "artistId":I
    const-string v2, "duration"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 61
    .local v16, "duration":J
    const-string v2, "mime_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 62
    .local v20, "mime":Ljava/lang/String;
    const-string v2, "is_secretbox"

    .line 63
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/16 v19, 0x1

    .line 66
    .local v19, "isPrivate":Z
    :goto_1
    const-string v2, "bit_depth"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 67
    .local v13, "bitDepth":I
    const-string/jumbo v2, "sampling_rate"

    .line 68
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 69
    .local v22, "samplingRate":I
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "data":Ljava/lang/String;
    if-nez v23, :cond_4

    .line 71
    invoke-static {v5}, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 73
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 75
    const-string v2, "cp_attrs"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 76
    .local v15, "cpAttrs":I
    const-string/jumbo v2, "source_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "sourceId":Ljava/lang/String;
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    .line 79
    .local v12, "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    const-string v2, "android.media.metadata.TITLE"

    move-object/from16 v0, v23

    invoke-virtual {v12, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 80
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v12, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 81
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v12, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 82
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v12, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 83
    const-string v2, "android.media.metadata.GENRE"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 86
    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->getId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 87
    const-string v2, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v12, v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 89
    const-string v2, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-virtual {v12, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 90
    const-string v2, "android.media.metadata.DURATION"

    move-wide/from16 v0, v16

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 91
    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 92
    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 93
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_LEGACY_BT_AVRCP:Z

    if-eqz v2, :cond_5

    .line 94
    const-string v2, "android.media.metadata.DISC_NUMBER"

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 95
    const-string v2, "android.media.metadata.TRACK_NUMBER"

    add-int/lit8 v3, p3, 0x1

    int-to-long v0, v3

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 98
    :cond_5
    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 99
    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 100
    if-eqz v19, :cond_6

    .line 101
    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 103
    :cond_6
    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    int-to-long v0, v9

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 104
    const-string v2, "com.samsung.android.app.music.metadata.ARTIST_ID"

    int-to-long v0, v11

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 105
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    int-to-long v0, v15

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 106
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v2, :cond_7

    .line 107
    const-string v2, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    .line 108
    move/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQualityData(IILjava/lang/String;)J

    move-result-wide v26

    .line 107
    move-wide/from16 v0, v26

    invoke-virtual {v12, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 110
    :cond_7
    new-instance v2, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    if-eqz v14, :cond_1

    if-eqz v24, :cond_9

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 63
    .end local v5    # "data":Ljava/lang/String;
    .end local v7    # "sourceId":Ljava/lang/String;
    .end local v12    # "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .end local v13    # "bitDepth":I
    .end local v15    # "cpAttrs":I
    .end local v19    # "isPrivate":Z
    .end local v22    # "samplingRate":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 111
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v7    # "sourceId":Ljava/lang/String;
    .restart local v12    # "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .restart local v13    # "bitDepth":I
    .restart local v15    # "cpAttrs":I
    .restart local v19    # "isPrivate":Z
    .restart local v22    # "samplingRate":I
    :cond_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 46
    .end local v5    # "data":Ljava/lang/String;
    .end local v7    # "sourceId":Ljava/lang/String;
    .end local v8    # "album":Ljava/lang/String;
    .end local v9    # "albumId":I
    .end local v10    # "artist":Ljava/lang/String;
    .end local v11    # "artistId":I
    .end local v12    # "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .end local v13    # "bitDepth":I
    .end local v15    # "cpAttrs":I
    .end local v16    # "duration":J
    .end local v18    # "genre":Ljava/lang/String;
    .end local v19    # "isPrivate":Z
    .end local v20    # "mime":Ljava/lang/String;
    .end local v21    # "rawAlbum":Ljava/lang/String;
    .end local v22    # "samplingRate":I
    .end local v23    # "title":Ljava/lang/String;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :catchall_0
    move-exception v3

    move-object/from16 v28, v3

    move-object v3, v2

    move-object/from16 v2, v28

    :goto_2
    if-eqz v14, :cond_a

    if-eqz v3, :cond_b

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_a
    :goto_3
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v24

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->cancel()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 218
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 194
    .local v0, "path":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 195
    const-string v0, ""

    .line 197
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 8
    .param p1, "priority"    # I

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v5, :cond_3

    .line 171
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 174
    .local v2, "message":Landroid/os/Bundle;
    :goto_0
    if-nez v2, :cond_2

    .line 175
    .local v3, "text":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_3

    .line 176
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 187
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Bundle;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v4

    .line 172
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v5, "player_extra_message"

    .line 173
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 174
    .restart local v2    # "message":Landroid/os/Bundle;
    :cond_2
    const-string v5, "msg_message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 180
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Bundle;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v6, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 182
    .local v1, "cpAttrs":I
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mSourceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mData:Ljava/lang/String;

    invoke-static {v5, v1, v6, v7}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->obtain(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 183
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 184
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->isLocalContent(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->getPathUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->reset()V

    .line 210
    :cond_0
    return-void
.end method
