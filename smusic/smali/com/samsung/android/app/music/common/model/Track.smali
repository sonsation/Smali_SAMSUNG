.class public Lcom/samsung/android/app/music/common/model/Track;
.super Lcom/samsung/android/app/music/common/model/SimpleTrack;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ARTIST_SEPERATOR:Ljava/lang/String; = ","

.field public static final BUFFERING_TRACK_ID:Ljava/lang/String; = "buffering"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CODEC:Ljava/lang/String; = "default"

.field private static final DELIMETER_SETTLE_ADJUSTMENT:Ljava/lang/String; = "|"

.field public static final MOD_STATION_ID:Ljava/lang/String; = "MOD"

.field private static final PARAM_THRESHOLD_TIME:Ljava/lang/String; = "sTime:"

.field public static final SKIPPABLE_TRACK:Ljava/lang/String; = "1"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mADAIYn:Ljava/lang/String;

.field private mAdjustmentThreshold:I

.field private mAdjustmented:I

.field private mArtistsJson:Ljava/lang/String;

.field protected mBitrate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation
.end field

.field protected mCelebTrack:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "celebYn"
    .end annotation
.end field

.field protected mCodec:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codec"
    .end annotation
.end field

.field private mCpEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpEventId"
    .end annotation
.end field

.field private mFavoriteYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favoriteYn"
    .end annotation
.end field

.field private mIndividualOnly:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "individualOnly"
    .end annotation
.end field

.field protected mIsDownloaded:I

.field protected mIsExpired:Z

.field protected mLength:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private mLyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lyricsUrl"
    .end annotation
.end field

.field protected mOffset:J

.field protected mPerformance_id:Ljava/lang/String;

.field protected mPlaylistSeqId:I

.field protected mPremiumOnlyYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "premiumOnlyYn"
    .end annotation
.end field

.field private mPreviewSongOnly:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewSongOnly"
    .end annotation
.end field

.field protected mPreviousOffset:J

.field protected mProviderType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "providerType"
    .end annotation
.end field

.field protected mRadioPlaylimitOver:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioPlaylimitOver"
    .end annotation
.end field

.field private mSeedUsable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seedUsable"
    .end annotation
.end field

.field private mSettlementExt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settlementExt"
    .end annotation
.end field

.field protected mSkippable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skippable"
    .end annotation
.end field

.field private mSongSequenceId:Ljava/lang/String;

.field private mStackedHistory:Z

.field protected mStationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationId"
    .end annotation
.end field

.field private mSyncLyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "synclyricsUrl"
    .end annotation
.end field

.field protected mThumbnailId:J

.field private mTimeStamp:Ljava/lang/String;

.field protected mTrackExp:J

.field protected mTrackPurchasable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songPurchasable"
    .end annotation
.end field

.field protected mTrackSequence:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sequence"
    .end annotation
.end field

.field protected mUrlExp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioExpiredTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    .line 567
    new-instance v0, Lcom/samsung/android/app/music/common/model/Track$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Track$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 54
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 70
    const-string v0, "default"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 83
    iput-wide v4, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 87
    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPerformance_id:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmented:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    .line 121
    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 125
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 128
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    .line 133
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 136
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 139
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 142
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 145
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    .line 147
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    .line 149
    iput-wide v4, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    .line 152
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 54
    const-string v2, "1"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 70
    const-string v2, "default"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 83
    iput-wide v4, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 87
    iput-object v3, p0, Lcom/samsung/android/app/music/common/model/Track;->mPerformance_id:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmented:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    .line 121
    iput-object v3, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 125
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 128
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    .line 133
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 136
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 139
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 142
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 145
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    .line 147
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    .line 149
    iput-wide v4, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mStationId:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mOffset:J

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mUrlExp:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSettlementExt:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLyricsUrl:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSongSequenceId:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mFavoriteYn:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackPurchasable:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    .line 333
    return-void

    :cond_0
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "audioType"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "urlExp"    # Ljava/lang/String;
    .param p8, "trackExp"    # J
    .param p10, "duration"    # J
    .param p12, "bitrate"    # J
    .param p14, "encoding"    # Ljava/lang/String;
    .param p15, "trackTitle"    # Ljava/lang/String;
    .param p16, "artistNames"    # Ljava/lang/String;
    .param p17, "albumTitle"    # Ljava/lang/String;
    .param p18, "coverArtUrl"    # Ljava/lang/String;
    .param p19, "isSkippable"    # Ljava/lang/String;
    .param p20, "albumId"    # Ljava/lang/String;
    .param p21, "isExplicit"    # I
    .param p22, "sequenceNum"    # Ljava/lang/String;
    .param p23, "artistIds"    # Ljava/lang/String;
    .param p24, "isExpired"    # Z
    .param p25, "seedUsable"    # Ljava/lang/String;
    .param p26, "lyricsUrl"    # Ljava/lang/String;
    .param p27, "syncLyricsUrl"    # Ljava/lang/String;
    .param p28, "celebTrack"    # Ljava/lang/String;
    .param p29, "radioPlaylimitOver"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 54
    const-string v2, "1"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 70
    const-string v2, "default"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 83
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPerformance_id:Ljava/lang/String;

    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmented:I

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 125
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 128
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    .line 133
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 136
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 139
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 142
    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 145
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    .line 147
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    .line 149
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    .line 726
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->trackId:Ljava/lang/String;

    .line 727
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/Track;->mStationId:Ljava/lang/String;

    .line 728
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/Track;->audioType:Ljava/lang/String;

    .line 729
    iput-wide p4, p0, Lcom/samsung/android/app/music/common/model/Track;->mOffset:J

    .line 730
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/Track;->audioUrl:Ljava/lang/String;

    .line 731
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/Track;->mUrlExp:Ljava/lang/String;

    .line 732
    iput-wide p8, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10, p11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    .line 735
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 736
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->trackTitle:Ljava/lang/String;

    .line 737
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->albumTitle:Ljava/lang/String;

    .line 738
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->albumArtUrl:Ljava/lang/String;

    .line 739
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 740
    move-object/from16 v0, p23

    move-object/from16 v1, p16

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 743
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 745
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->albumId:Ljava/lang/String;

    .line 746
    move/from16 v0, p21

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Track;->explicit:I

    .line 747
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    .line 748
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    .line 749
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLyricsUrl:Ljava/lang/String;

    .line 750
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    .line 751
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public static convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "rowAudioId"    # J

    .prologue
    .line 865
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 866
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .end local p1    # "rowAudioId":J
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    const-string/jumbo v1, "track_id"

    const-string/jumbo v2, "track_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string/jumbo v1, "track_type"

    const-string/jumbo v2, "track_type"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string/jumbo v1, "track_provider_type"

    const-string/jumbo v2, "track_provider_type"

    .line 870
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string/jumbo v1, "track_lyrics_url"

    const-string/jumbo v2, "track_lyrics_url"

    .line 872
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string/jumbo v1, "track_synclyrics_url"

    const-string/jumbo v2, "track_synclyrics_url"

    .line 874
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string/jumbo v1, "track_is_explicit"

    const-string/jumbo v2, "track_is_explicit"

    .line 876
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string/jumbo v1, "track_preminum_only_yn"

    const-string/jumbo v2, "track_preminum_only_yn"

    .line 878
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string/jumbo v1, "track_audio_url"

    const-string/jumbo v2, "track_audio_url"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string/jumbo v1, "track_audio_url_exp"

    const-string/jumbo v2, "track_audio_url_exp"

    .line 881
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string/jumbo v1, "track_is_celeb_track"

    const-string/jumbo v2, "track_is_celeb_track"

    .line 883
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string/jumbo v1, "track_settle_ext"

    const-string/jumbo v2, "track_settle_ext"

    .line 885
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-object v0

    .line 866
    .restart local p1    # "rowAudioId":J
    :cond_0
    const-wide/16 p1, -0x1

    goto/16 :goto_0
.end method

.method public static createSimpleTrackObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 1
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "artistNames"    # Ljava/lang/String;
    .param p4, "coverArtUrl"    # Ljava/lang/String;
    .param p5, "audioUrl"    # Ljava/lang/String;
    .param p6, "audioUrlExp"    # Ljava/lang/String;

    .prologue
    .line 663
    new-instance v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 664
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/model/Track;->setArtistNames(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/common/model/Track;->setImageUrl(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p5}, Lcom/samsung/android/app/music/common/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 670
    invoke-virtual {v0, p6}, Lcom/samsung/android/app/music/common/model/Track;->setUrlExp(Ljava/lang/String;)Z

    .line 671
    return-object v0
.end method

.method public static createTrackFromTrackDetailinfo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 2
    .param p0, "detail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 999
    new-instance v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 1000
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setLyricsUrl(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setImageUrl(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getExplicit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setExplicit(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 1010
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setArtistNames(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSeedUsable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setSeedUsable(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getFavoriteYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setFavoriteYn(Ljava/lang/String;)V

    .line 1015
    return-object v0
.end method

.method public static createTrackObjFromStationTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 20
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 800
    new-instance v14, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v14}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 802
    .local v14, "track":Lcom/samsung/android/app/music/common/model/Track;
    const-string/jumbo v18, "track_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 803
    .local v15, "trackId":Ljava/lang/String;
    const-string/jumbo v18, "station_id"

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 805
    .local v13, "stationId":Ljava/lang/String;
    const-string/jumbo v18, "track_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 806
    .local v17, "trackType":Ljava/lang/String;
    const-string/jumbo v18, "track_track_title"

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 808
    .local v16, "trackTitle":Ljava/lang/String;
    const-string/jumbo v18, "track_album_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "albumId":Ljava/lang/String;
    const-string/jumbo v18, "track_album_title"

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, "albumTitle":Ljava/lang/String;
    const-string/jumbo v18, "track_coverart_url"

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "albumCover":Ljava/lang/String;
    const-string/jumbo v18, "track_artist_name"

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, "artistNames":Ljava/lang/String;
    const-string/jumbo v18, "track_artist_id"

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, "artistIds":Ljava/lang/String;
    const-string/jumbo v18, "track_artists"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 818
    .local v7, "artists":Ljava/lang/String;
    const-string/jumbo v18, "track_is_explicit"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 819
    .local v9, "isExplicit":I
    const-string/jumbo v18, "track_provider_type"

    .line 820
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 821
    .local v10, "providerType":Ljava/lang/String;
    const-string/jumbo v18, "track_seed_usable"

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 823
    .local v12, "seedUsable":Ljava/lang/String;
    const-string/jumbo v18, "track_is_purchasable"

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 823
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 826
    .local v11, "purchasable":Ljava/lang/String;
    invoke-virtual {v14, v15}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v14, v13}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 828
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 829
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v14, v3}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v14, v4}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v14, v2}, Lcom/samsung/android/app/music/common/model/Track;->setImageUrl(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v14, v7}, Lcom/samsung/android/app/music/common/model/Track;->setArtistJson(Ljava/lang/String;)V

    .line 834
    if-eqz v7, :cond_1

    .line 835
    invoke-static {v7}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 839
    :goto_0
    invoke-virtual {v14, v9}, Lcom/samsung/android/app/music/common/model/Track;->setExplicit(I)V

    .line 840
    invoke-virtual {v14, v10}, Lcom/samsung/android/app/music/common/model/Track;->setProviderType(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v14, v11}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v14, v12}, Lcom/samsung/android/app/music/common/model/Track;->setSeedUsable(Ljava/lang/String;)V

    .line 843
    const-string/jumbo v18, "track_preminum_only_yn"

    .line 844
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 843
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setPremiumOnlyYn(Ljava/lang/String;)V

    .line 845
    const-string/jumbo v18, "track_duration"

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 845
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setDuration(J)Z

    .line 847
    const-string/jumbo v18, "track_audio_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 848
    const-string/jumbo v18, "track_audio_url_exp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setUrlExp(Ljava/lang/String;)Z

    .line 849
    const-string/jumbo v18, "track_lyrics_url"

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 849
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setLyricsUrl(Ljava/lang/String;)V

    .line 851
    const-string/jumbo v18, "track_synclyrics_url"

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 851
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setSyncLyricsUrl(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v18, "track_is_celeb_track"

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 853
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setCelebTrack(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v18, "track_settle_ext"

    .line 856
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 855
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V

    .line 857
    const-string v18, "album_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 858
    .local v8, "indexOfThumnainID":I
    if-lez v8, :cond_0

    .line 859
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setThumbnailId(J)V

    .line 861
    :cond_0
    return-object v14

    .line 837
    .end local v8    # "indexOfThumnainID":I
    :cond_1
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public static createTrackObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 31
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "urlExp"    # Ljava/lang/String;
    .param p7, "trackExp"    # J
    .param p9, "duration"    # J
    .param p11, "bitrate"    # J
    .param p13, "encoding"    # Ljava/lang/String;
    .param p14, "trackTitle"    # Ljava/lang/String;
    .param p15, "artistName"    # Ljava/lang/String;
    .param p16, "albumTitle"    # Ljava/lang/String;
    .param p17, "coverArtUrl"    # Ljava/lang/String;
    .param p18, "isSkippable"    # Ljava/lang/String;
    .param p19, "albumId"    # Ljava/lang/String;
    .param p20, "isExplicit"    # I
    .param p21, "sequenceNum"    # Ljava/lang/String;
    .param p22, "artistId"    # Ljava/lang/String;
    .param p23, "isExpired"    # Z
    .param p24, "seedUsable"    # Ljava/lang/String;
    .param p25, "lyricsUrl"    # Ljava/lang/String;
    .param p26, "syncLyricsUrl"    # Ljava/lang/String;
    .param p27, "celebTrack"    # Ljava/lang/String;
    .param p28, "radioPlaylimitOver"    # Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Lcom/samsung/android/app/music/common/model/Track;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p25

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    invoke-direct/range {v0 .. v29}, Lcom/samsung/android/app/music/common/model/Track;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTrackObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 2
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artistIds"    # Ljava/lang/String;
    .param p4, "artistNames"    # Ljava/lang/String;
    .param p5, "artistJson"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "purchasable"    # Ljava/lang/String;
    .param p8, "seedUsable"    # Ljava/lang/String;

    .prologue
    .line 681
    new-instance v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 682
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 684
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 685
    if-eqz p5, :cond_0

    .line 686
    invoke-static {p5}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 690
    :goto_0
    invoke-virtual {v0, p6}, Lcom/samsung/android/app/music/common/model/Track;->setTimeStamp(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0, p7}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0, p8}, Lcom/samsung/android/app/music/common/model/Track;->setSeedUsable(Ljava/lang/String;)V

    .line 693
    return-object v0

    .line 688
    :cond_0
    invoke-static {p3, p4}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static createTrackObjectFromTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 756
    new-instance v5, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 758
    .local v5, "track":Lcom/samsung/android/app/music/common/model/Track;
    const-string/jumbo v9, "source_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "trackId":Ljava/lang/String;
    const-string/jumbo v9, "track_type"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 760
    .local v8, "trackType":Ljava/lang/String;
    const-string/jumbo v9, "title"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, "trackTitle":Ljava/lang/String;
    const-string v9, "album_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "albumId":Ljava/lang/String;
    const-string v9, "album"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "albumTitle":Ljava/lang/String;
    const-string v9, "artist"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "artistNames":Ljava/lang/String;
    const-string/jumbo v9, "track_is_explicit"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 769
    .local v3, "isExplicit":I
    const-string/jumbo v9, "track_provider_type"

    .line 770
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, "providerType":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/common/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/common/model/Track;->setArtistNames(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/model/Track;->setExplicit(I)V

    .line 780
    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/common/model/Track;->setProviderType(Ljava/lang/String;)V

    .line 781
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 783
    const-string/jumbo v9, "track_preminum_only_yn"

    .line 784
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 783
    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setPremiumOnlyYn(Ljava/lang/String;)V

    .line 785
    const-string v9, "duration"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/samsung/android/app/music/common/model/Track;->setDuration(J)Z

    .line 786
    const-string/jumbo v9, "track_audio_url"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 787
    const-string/jumbo v9, "track_audio_url_exp"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setUrlExp(Ljava/lang/String;)Z

    .line 788
    const-string/jumbo v9, "track_lyrics_url"

    .line 789
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 788
    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setLyricsUrl(Ljava/lang/String;)V

    .line 790
    const-string/jumbo v9, "track_synclyrics_url"

    .line 791
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 790
    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setSyncLyricsUrl(Ljava/lang/String;)V

    .line 792
    const-string/jumbo v9, "track_is_celeb_track"

    .line 793
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 792
    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setCelebTrack(Ljava/lang/String;)V

    .line 794
    const-string/jumbo v9, "track_settle_ext"

    .line 795
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 794
    invoke-virtual {v5, v9}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V

    .line 796
    return-object v5
.end method

.method public static getSettleThreshold(Ljava/lang/String;)I
    .locals 8
    .param p0, "settlementExt"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 185
    .local v2, "time":I
    if-eqz p0, :cond_2

    .line 186
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "|"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v4, "tokens":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v5, "sTime:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const-string/jumbo v5, "sTime:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "threshold":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 195
    sget-object v5, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSettlementExt>> threshold - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSettlementExt>> threshold - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    .end local v1    # "threshold":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    return v2
.end method

.method private static getTimeValue(Ljava/lang/String;)J
    .locals 10
    .param p0, "length"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 621
    const-wide/16 v2, 0x0

    .line 622
    .local v2, "ret":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 624
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 625
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "timeList":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 630
    .end local v1    # "timeList":[Ljava/lang/String;
    :goto_0
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 631
    sget-object v4, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "parseTrackJson>> length is under 1000"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    mul-long/2addr v2, v8

    .line 640
    :cond_0
    :goto_1
    return-wide v2

    .line 628
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isAdsOrInterruption(Ljava/lang/String;)Z
    .locals 1
    .param p0, "audioType"    # Ljava/lang/String;

    .prologue
    .line 1063
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    .line 1064
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlExpired(Ljava/lang/String;)Z
    .locals 14
    .param p0, "urlExp"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1038
    if-eqz p0, :cond_5

    .line 1039
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertStringToUTC(Ljava/lang/String;)J

    move-result-wide v4

    .line 1040
    .local v4, "expiredTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    .line 1041
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    int-to-long v12, v12

    sub-long v2, v10, v12

    .line 1043
    .local v2, "deviceTime":J
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertStringToUTC(Ljava/lang/String;)J

    move-result-wide v6

    .line 1045
    .local v6, "serverTime":J
    cmp-long v10, v4, v2

    if-gez v10, :cond_2

    move v0, v8

    .line 1046
    .local v0, "deviceExpired":Z
    :goto_0
    cmp-long v10, v4, v6

    if-gez v10, :cond_3

    move v1, v8

    .line 1048
    .local v1, "serverExpired":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 1049
    :cond_0
    sget-object v10, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isUrlExpired>> device - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", server - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", exp - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    sget-object v10, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isUrlExpired>> device - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1052
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", server - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1053
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", exp - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1054
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1051
    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1059
    .end local v0    # "deviceExpired":Z
    .end local v1    # "serverExpired":Z
    .end local v2    # "deviceTime":J
    .end local v4    # "expiredTime":J
    .end local v6    # "serverTime":J
    :goto_2
    return v8

    .restart local v2    # "deviceTime":J
    .restart local v4    # "expiredTime":J
    .restart local v6    # "serverTime":J
    :cond_2
    move v0, v9

    .line 1045
    goto :goto_0

    .restart local v0    # "deviceExpired":Z
    :cond_3
    move v1, v9

    .line 1046
    goto :goto_1

    .restart local v1    # "serverExpired":Z
    :cond_4
    move v8, v9

    .line 1056
    goto :goto_2

    .line 1058
    .end local v0    # "deviceExpired":Z
    .end local v1    # "serverExpired":Z
    .end local v2    # "deviceTime":J
    .end local v4    # "expiredTime":J
    .end local v6    # "serverTime":J
    :cond_5
    sget-object v8, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    const-string v10, "isUrlExpired>> url expired is null"

    invoke-static {v8, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1059
    goto :goto_2
.end method


# virtual methods
.method public copyTrack(Lcom/samsung/android/app/music/common/model/Track;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 2
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 903
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAdjustmented()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAdjustmented(I)V

    .line 904
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setOffset(J)V

    .line 905
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPreviousOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->setPreviousOffset(J)V

    .line 906
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getADAIYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/Track;->setADAIYn(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsDownloaded()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/Track;->setIsDownloaded(I)V

    .line 909
    iget-boolean v0, p1, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/Track;->setStackHistory(Z)V

    .line 910
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 915
    if-ne p1, p0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v1

    .line 919
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_5

    move-object v0, p1

    .line 920
    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    .line 921
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 924
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 925
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 926
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 928
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 929
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 932
    .end local v0    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getADAIYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->isRadioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    const-string v0, "0"

    .line 958
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdjustmentThreshold()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmentThreshold:I

    return v0
.end method

.method public getAdjustmented()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmented:I

    return v0
.end method

.method public getArtistJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 581
    .local v0, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 582
    invoke-static {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->makeJsonString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    return-object v1
.end method

.method public getBitrate()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 371
    const-wide/16 v0, 0x0

    .line 372
    .local v0, "bitRate":J
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 381
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 382
    const-wide/16 v0, 0x40

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    .line 384
    sget-object v3, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitrate>> bitrate is 0. so add default bitrate. bitrate - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 388
    div-long/2addr v0, v6

    .line 390
    .end local v0    # "bitRate":J
    :cond_2
    return-wide v0

    .line 375
    .restart local v0    # "bitRate":J
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, 0x40

    .line 377
    sget-object v3, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitrate>> NumberFormatException - set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getClone()Lcom/samsung/android/app/music/common/model/Track;
    .locals 32

    .prologue
    .line 336
    new-instance v2, Lcom/samsung/android/app/music/common/model/Track;

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getOffset()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackExp()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getBitrate()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getEncoding()Ljava/lang/String;

    move-result-object v16

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v20

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getIsSkippable()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getExplicit()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackSequence()Ljava/lang/String;

    move-result-object v24

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getArtistIds()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getIsExpired()Z

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getSeedUsable()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v28

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v2 .. v31}, Lcom/samsung/android/app/music/common/model/Track;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v2, "newTrack":Lcom/samsung/android/app/music/common/model/Track;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/model/Track;->mPreviousOffset:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/model/Track;->setPreviousOffset(J)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setTrackSequence(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/model/Track;->setTrackExp(J)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mPerformance_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setPerformanceId(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mTrackPurchasable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mProviderType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setProviderType(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setPremiumOnlyYn(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setADAIYn(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setIsDownloaded(I)V

    .line 352
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setStackHistory(Z)V

    .line 353
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setCurrentPlaylistSeqId(I)V

    .line 355
    return-object v2
.end method

.method public getCpEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCpEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlaylistSeqId()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-wide/16 v0, 0x0

    .line 406
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    const-string v0, "default"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "AAC"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 483
    sget-object v0, Lcom/samsung/android/app/music/common/model/Track;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEncoding>> codec does not set. so return default codec. codec - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mFavoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getIndividualOnly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDownloaded()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    return v0
.end method

.method public getIsExpired()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    return v0
.end method

.method public getIsPurhchasable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackPurchasable:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSkippable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 447
    const-string v0, "1"

    .line 449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 512
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mOffset:J

    return-wide v0
.end method

.method public getPremiumOnlyYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSongOnly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousOffset()J
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviousOffset:J

    return-wide v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mProviderType:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getSettlementExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSettlementExt:Ljava/lang/String;

    return-object v0
.end method

.method public getSongSequenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSongSequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncLyricsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailId()J
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    return-wide v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackExp()J
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    return-wide v0
.end method

.method public getTrackSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlExp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mUrlExp:Ljava/lang/String;

    return-object v0
.end method

.method public hasLyrics()Z
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 940
    const/16 v0, 0x11

    .line 941
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 942
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 943
    return v0

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public isAdsOrInterruption()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->isRadioTrack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const-string v1, "2"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCelebTrack()Z
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isModTrack()Z
    .locals 2

    .prologue
    .line 982
    const-string v0, "MOD"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioPlaylimitOver()Z
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    const-string v1, "1"

    .line 597
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isRadioTrack()Z
    .locals 2

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "MOD"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 987
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    .line 988
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    .line 989
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeedUsable()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackedHistory()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    return v0
.end method

.method public setADAIYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDAIYn"    # Ljava/lang/String;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public setAdjustmented(I)V
    .locals 0
    .param p1, "adjustmented"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmented:I

    .line 251
    return-void
.end method

.method public setArtistJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setBitrate(J)Z
    .locals 3
    .param p1, "bitrate"    # J

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCelebTrack(Ljava/lang/String;)V
    .locals 0
    .param p1, "celebTrack"    # Ljava/lang/String;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setCpEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpEventId"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mCpEventId:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setCurrentPlaylistSeqId(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 648
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPlaylistSeqId:I

    .line 649
    return-void
.end method

.method public setDuration(J)Z
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 410
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    return v0

    .line 495
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    .line 496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteYn"    # Ljava/lang/String;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mFavoriteYn:Ljava/lang/String;

    .line 971
    return-void
.end method

.method public setIndividualOnly(Ljava/lang/String;)V
    .locals 0
    .param p1, "individualOnly"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setIsDownloaded(I)V
    .locals 0
    .param p1, "downloaded"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsDownloaded:I

    .line 517
    return-void
.end method

.method public setIsExpired(Z)V
    .locals 0
    .param p1, "expired"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    .line 443
    return-void
.end method

.method public setIsPurchasable(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchasable"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackPurchasable:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setIsSkippable(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipable"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setLyricsUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "lyricsUrl"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mLyricsUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 508
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mOffset:J

    .line 509
    return-void
.end method

.method public setPerformanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPerformance_id:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPremiumOnlyYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPremiumOnlyYn"    # Ljava/lang/String;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public setPreviewSongOnly(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewSongOnly"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setPreviousOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 500
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviousOffset:J

    .line 501
    return-void
.end method

.method public setProviderType(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mProviderType:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setRadioPlaylimitOver(Z)V
    .locals 1
    .param p1, "isLimit"    # Z

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 602
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSeedUsable(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedUsable"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSettlementExt(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mSettlementExt:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSettleThreshold(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mAdjustmentThreshold:I

    .line 181
    return-void
.end method

.method public final setSongSequneceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mSongSequenceId:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setStackHistory(Z)V
    .locals 0
    .param p1, "stack"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mStackedHistory:Z

    .line 259
    return-void
.end method

.method public setStationId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mStationId:Ljava/lang/String;

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSyncLyricsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncLyricsUrl"    # Ljava/lang/String;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    .line 979
    return-void
.end method

.method public setThumbnailId(J)V
    .locals 1
    .param p1, "thumbnailId"    # J

    .prologue
    .line 613
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    .line 614
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mTimeStamp:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTrackExp(J)V
    .locals 1
    .param p1, "track_exp"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    .line 435
    return-void
.end method

.method public setTrackSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setUrlExp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url_exp"    # Ljava/lang/String;

    .prologue
    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    .line 425
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Track;->mUrlExp:Ljava/lang/String;

    .line 426
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1019
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1021
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1022
    const-string/jumbo v1, "track_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string/jumbo v1, "track_type"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string/jumbo v1, "track_provider_type"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v1, "track_lyrics_url"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v1, "track_synclyrics_url"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v1, "track_is_explicit"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string/jumbo v1, "track_preminum_only_yn"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v1, "track_audio_url"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v1, "track_audio_url_exp"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v1, "track_is_celeb_track"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1032
    const-string/jumbo v1, "track_settle_ext"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codec - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 894
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequence - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getSongSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPurchasable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 280
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSkippable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLength:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackSequence:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mUrlExp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackExp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIsExpired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSeedUsable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSettlementExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mLyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mSongSequenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mADAIYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mFavoriteYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mIndividualOnly:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mTrackPurchasable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mCelebTrack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mRadioPlaylimitOver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Track;->mThumbnailId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
