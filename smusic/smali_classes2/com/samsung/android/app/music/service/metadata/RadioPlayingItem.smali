.class public Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;
.super Ljava/lang/Object;
.source "RadioPlayingItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# static fields
.field private static final INITIAL_ID:J = -0xc8L

.field private static final RADIO_QUEUE_POSITION:I = 0x0

.field private static final RADIO_QUEUE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sDummyId:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtraData:Landroid/os/Bundle;

.field private final mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->TAG:Ljava/lang/String;

    .line 36
    const-wide/16 v0, -0xc8

    sput-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p3, "sourceId"    # Ljava/lang/String;
    .param p4, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 137
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mSourceId:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mExtraData:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method private static getDummyRadioId()J
    .locals 4

    .prologue
    .line 126
    sget-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 127
    const-wide/16 v0, -0xc8

    sput-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    .line 131
    :goto_0
    sget-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    return-wide v0

    .line 129
    :cond_0
    sget-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->sDummyId:J

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Track;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "listPosition"    # I

    .prologue
    .line 49
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    .line 50
    .local v10, "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v24

    .line 51
    .local v24, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "album":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "artist":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dummy_data_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 55
    .local v18, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v16

    .line 56
    .local v16, "duration":J
    const/16 v21, 0x0

    .line 59
    .local v21, "playDirection":I
    const-string v19, "<unknown>"

    .line 60
    .local v19, "genre":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getThumbnailId()J

    move-result-wide v6

    .line 61
    .local v6, "albumId":J
    const-wide/16 v8, -0x1

    .line 63
    .local v8, "artistId":J
    const-wide/32 v14, 0x80002

    .line 65
    .local v14, "cpAttrs":J
    const/16 v22, 0x0

    .line 66
    .local v22, "samplingRate":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getBitrate()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v11, v0

    .line 67
    .local v11, "bitDepth":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getEncoding()Ljava/lang/String;

    move-result-object v20

    .line 69
    .local v20, "mime":Ljava/lang/String;
    const-string v25, "android.media.metadata.TITLE"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 70
    const-string v25, "android.media.metadata.ALBUM"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 71
    const-string v25, "android.media.metadata.ARTIST"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 72
    const-string v25, "android.media.metadata.ALBUM_ARTIST"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 73
    const-string v25, "android.media.metadata.GENRE"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 79
    const-string v25, "android.media.metadata.MEDIA_ID"

    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getDummyRadioId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 80
    const-string v25, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 81
    const-string v25, "com.samsung.android.app.music.metadata.CHANNEL_NAME"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 83
    const-string v25, "com.samsung.android.app.music.metadata.PLAYING_URI"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 84
    const-string v25, "android.media.metadata.DURATION"

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 85
    const-string v25, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    const-wide/16 v26, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 86
    const-string v25, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 88
    sget-boolean v25, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_LEGACY_BT_AVRCP:Z

    if-eqz v25, :cond_0

    .line 89
    const-string v25, "android.media.metadata.DISC_NUMBER"

    const-wide/16 v26, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 90
    const-string v25, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 v26, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 93
    :cond_0
    const-string v25, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 95
    const-string v25, "com.samsung.android.app.music.metadata.ALBUM_ID"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 96
    const-string v25, "com.samsung.android.app.music.metadata.ARTIST_ID"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 97
    const-string v25, "com.samsung.android.app.music.metadata.CP_ATTRS"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 98
    sget-boolean v25, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v25, :cond_1

    .line 99
    const-string v25, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    .line 100
    move/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v11, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQualityData(IILjava/lang/String;)J

    move-result-wide v26

    .line 99
    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v23

    .line 104
    .local v23, "sourceId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 105
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putRadioCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 112
    :goto_0
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v12, "content":Landroid/os/Bundle;
    const-string/jumbo v25, "station_id"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v25, "track_id"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v25, "album_id"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v25, "artist_id"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v25, "audio_type"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v25, "settlement_ext"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v13, "extra":Landroid/os/Bundle;
    const-string v25, "player_extra_content"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    new-instance v25, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v25

    .line 106
    .end local v12    # "content":Landroid/os/Bundle;
    .end local v13    # "extra":Landroid/os/Bundle;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 107
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->cancel()V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 192
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mExtraData:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 6
    .param p1, "priority"    # I

    .prologue
    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 165
    :cond_0
    :goto_0
    return-object v2

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mExtraData:Landroid/os/Bundle;

    const-string v4, "player_extra_content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "content":Landroid/os/Bundle;
    const-string/jumbo v3, "station_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "stationId":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mExtraData:Landroid/os/Bundle;

    invoke-static {v3, v4, v1, v5}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->createRadioPlayingUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 161
    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 162
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->isLocalContent(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->getPathUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->mPlayingUri:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->reset()V

    .line 184
    :cond_0
    return-void
.end method
