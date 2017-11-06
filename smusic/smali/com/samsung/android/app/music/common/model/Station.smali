.class public Lcom/samsung/android/app/music/common/model/Station;
.super Lcom/samsung/android/app/music/common/model/SimpleStation;
.source "Station.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/Station$Type;,
        Lcom/samsung/android/app/music/common/model/Station$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEED_STATION_UPDATE:I = 0x64

.field protected static final TAG:Ljava/lang/String;

.field public static final UNLIMITED_COUNT:I = -0x80000000


# instance fields
.field private hiddenYn:Ljava/lang/String;

.field private mAudioAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioAdYn"
    .end annotation
.end field

.field protected mBannedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field protected mGenreId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genreId"
    .end annotation
.end field

.field private mGenreLastUpdated:Ljava/lang/String;

.field protected mGenreName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "genreName"
        }
        value = "genre"
    .end annotation
.end field

.field protected mGenreType:Ljava/lang/String;

.field protected mGenreVisible:I

.field private mImageAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageAdYn"
    .end annotation
.end field

.field private mIsMyStation:I

.field protected mIsTurned:Z

.field private mLastUpdated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastUpdated"
    .end annotation
.end field

.field protected mMyStationOrdinal:I

.field private mNeedUpdateStation:I

.field protected mNextTrackId:Ljava/lang/String;

.field private mOfflineLastSyncedTime:J

.field private mOfflineSyncState:I

.field protected mPrevTrackId:Ljava/lang/String;

.field protected mProviderType:Ljava/lang/String;

.field private mSeeds:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seedList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCount:I

.field protected mStationSubType:Ljava/lang/String;

.field private mStayingTime:I

.field private mTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field

.field protected mTrackId:Ljava/lang/String;

.field public mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackInfo"
    .end annotation
.end field

.field protected mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoAdYn"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/model/Station;->TAG:Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/samsung/android/app/music/common/model/Station$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Station$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/Station;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleStation;-><init>()V

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreVisible:I

    .line 92
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    .line 188
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const v1, 0x7fffffff

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleStation;-><init>(Landroid/os/Parcel;)V

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreVisible:I

    .line 92
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackId:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mPrevTrackId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNextTrackId:Ljava/lang/String;

    .line 197
    const-class v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mDescription:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mLastUpdated:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/music/common/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/music/common/model/Seed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTag:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationSubType:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNeedUpdateStation:I

    .line 214
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "nextTrackId"    # Ljava/lang/String;
    .param p4, "stationName"    # Ljava/lang/String;
    .param p5, "genre"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "lastUpdated"    # Ljava/lang/String;
    .param p9, "ordinal"    # I
    .param p10, "isHidden"    # I
    .param p11, "audioAdYn"    # Ljava/lang/String;
    .param p12, "videoAdYn"    # Ljava/lang/String;
    .param p13, "imageAdYn"    # Ljava/lang/String;

    .prologue
    const v1, 0x7fffffff

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleStation;-><init>()V

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreVisible:I

    .line 92
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    .line 488
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    .line 489
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackId:Ljava/lang/String;

    .line 490
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/Station;->mNextTrackId:Ljava/lang/String;

    .line 491
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationName:Ljava/lang/String;

    .line 492
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreName:Ljava/lang/String;

    .line 493
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationType:Ljava/lang/String;

    .line 494
    iput p9, p0, Lcom/samsung/android/app/music/common/model/Station;->mOrdinal:I

    .line 495
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/Station;->mDescription:Ljava/lang/String;

    .line 496
    iput-object p8, p0, Lcom/samsung/android/app/music/common/model/Station;->mLastUpdated:Ljava/lang/String;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    .line 498
    iput-object p11, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 499
    iput-object p12, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 500
    iput-object p13, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    .line 501
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "nextTrackId"    # Ljava/lang/String;
    .param p4, "stationName"    # Ljava/lang/String;
    .param p5, "genre"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "lastUpdated"    # Ljava/lang/String;
    .param p9, "ordinal"    # I
    .param p10, "stationSubType"    # Ljava/lang/String;
    .param p11, "isHidden"    # I
    .param p12, "audioAdYn"    # Ljava/lang/String;
    .param p13, "videoAdYn"    # Ljava/lang/String;
    .param p14, "imageAdYn"    # Ljava/lang/String;

    .prologue
    .line 518
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/app/music/common/model/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationSubType:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public static createSimpleStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p0, "stationId"    # Ljava/lang/String;
    .param p1, "stationType"    # Ljava/lang/String;
    .param p2, "stationName"    # Ljava/lang/String;
    .param p3, "ordinal"    # I

    .prologue
    .line 460
    new-instance v0, Lcom/samsung/android/app/music/common/model/Station;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Station;-><init>()V

    .line 461
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    iput-object p0, v0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    .line 462
    iput-object p1, v0, Lcom/samsung/android/app/music/common/model/Station;->mStationType:Ljava/lang/String;

    .line 463
    iput-object p2, v0, Lcom/samsung/android/app/music/common/model/Station;->mStationName:Ljava/lang/String;

    .line 464
    iput p3, v0, Lcom/samsung/android/app/music/common/model/Station;->mOrdinal:I

    .line 465
    return-object v0
.end method

.method public static createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 29
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 581
    :try_start_0
    const-string/jumbo v2, "station_id"

    .line 582
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "station_track_id"

    .line 583
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "station_nexttrack_id"

    .line 584
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "station_station_name"

    .line 585
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "genre_name"

    .line 586
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "station_description"

    .line 587
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "station_type"

    .line 588
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "station_update_date"

    .line 589
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "station_ordinal"

    .line 590
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v11, "station_is_hidden"

    .line 591
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string/jumbo v12, "station_is_audioAdYn"

    .line 592
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "station_is_videoAdYn"

    .line 593
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "station_is_imageAdYn"

    .line 594
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 581
    invoke-static/range {v2 .. v14}, Lcom/samsung/android/app/music/common/model/Station;->createStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v24

    .line 596
    .local v24, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v24, :cond_b

    .line 597
    const-string/jumbo v2, "station_prevtrack_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 598
    .local v23, "prev_index":I
    if-ltz v23, :cond_0

    .line 599
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setPrevTrackId(Ljava/lang/String;)V

    .line 602
    :cond_0
    const-string/jumbo v2, "station_is_turned"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 603
    .local v21, "is_turned":I
    if-ltz v21, :cond_1

    .line 604
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 605
    .local v28, "turned":I
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setIsTurned(Z)V

    .line 608
    .end local v28    # "turned":I
    :cond_1
    const-string v2, "genre_type"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 609
    .local v18, "genreTypeIndex":I
    if-ltz v18, :cond_2

    .line 610
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 611
    .local v17, "genreType":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setGenreType(Ljava/lang/String;)V

    .line 614
    .end local v17    # "genreType":Ljava/lang/String;
    :cond_2
    const-string v2, "is_mystation"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 615
    .local v20, "isMyStationIndex":I
    if-ltz v20, :cond_3

    .line 616
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setIsMyStation(I)V

    .line 619
    :cond_3
    const-string/jumbo v2, "station_tag"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 620
    .local v27, "tagIndex":I
    if-ltz v27, :cond_4

    .line 621
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setTag(Ljava/lang/String;)V

    .line 624
    :cond_4
    const-string/jumbo v2, "station_staying_time"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 625
    .local v25, "stayingTimeIndex":I
    if-ltz v25, :cond_5

    .line 626
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStayingTime(I)V

    .line 629
    :cond_5
    const-string v2, "genre_is_visible"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 630
    .local v19, "genreVisibleIndex":I
    if-ltz v19, :cond_6

    .line 631
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenreVisible(I)V

    .line 634
    :cond_6
    const-string/jumbo v2, "station_sub_type"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 635
    .local v26, "subTypeIndex":I
    if-ltz v26, :cond_7

    .line 636
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStationSubType(Ljava/lang/String;)V

    .line 639
    :cond_7
    const-string/jumbo v2, "station_genre_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 640
    .local v16, "genreIdIndex":I
    if-ltz v16, :cond_8

    .line 641
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenreId(Ljava/lang/String;)V

    .line 654
    :cond_8
    const-string v2, "mystation_ordinal"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 655
    .local v22, "myStationOrdinalIndex":I
    if-ltz v22, :cond_9

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setMyStationOrdinal(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v16    # "genreIdIndex":I
    .end local v18    # "genreTypeIndex":I
    .end local v19    # "genreVisibleIndex":I
    .end local v20    # "isMyStationIndex":I
    .end local v21    # "is_turned":I
    .end local v22    # "myStationOrdinalIndex":I
    .end local v23    # "prev_index":I
    .end local v24    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v25    # "stayingTimeIndex":I
    .end local v26    # "subTypeIndex":I
    .end local v27    # "tagIndex":I
    :cond_9
    :goto_1
    return-object v24

    .line 605
    .restart local v21    # "is_turned":I
    .restart local v23    # "prev_index":I
    .restart local v24    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .restart local v28    # "turned":I
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 661
    .end local v21    # "is_turned":I
    .end local v23    # "prev_index":I
    .end local v28    # "turned":I
    :cond_b
    const/16 v24, 0x0

    goto :goto_1

    .line 662
    .end local v24    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :catch_0
    move-exception v15

    .line 663
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public static createStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 14
    .param p0, "stationId"    # Ljava/lang/String;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "nextTrackId"    # Ljava/lang/String;
    .param p3, "stationName"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "lastUpdated"    # Ljava/lang/String;
    .param p8, "ordinal"    # I
    .param p9, "isHidden"    # I
    .param p10, "audioAdYn"    # Ljava/lang/String;
    .param p11, "videoAdYn"    # Ljava/lang/String;
    .param p12, "imageAdYn"    # Ljava/lang/String;

    .prologue
    .line 475
    if-nez p0, :cond_0

    .line 476
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/Station;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/music/common/model/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 15
    .param p0, "stationId"    # Ljava/lang/String;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "nextTrackId"    # Ljava/lang/String;
    .param p3, "stationName"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "lastUpdated"    # Ljava/lang/String;
    .param p8, "ordinal"    # I
    .param p9, "stationSubType"    # Ljava/lang/String;
    .param p10, "isHidden"    # I
    .param p11, "audioAdYn"    # Ljava/lang/String;
    .param p12, "videoAdYn"    # Ljava/lang/String;
    .param p13, "imageAdYn"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/Station;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/app/music/common/model/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createStationsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    invoke-static {p0}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 671
    .local v1, "s":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 673
    .end local v1    # "s":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    return-object v0
.end method

.method public static isPersonalStation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "stationType"    # Ljava/lang/String;

    .prologue
    .line 756
    const-string v0, "02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addBanSongList(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    .line 399
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 733
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 742
    :goto_0
    return v0

    .line 737
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 739
    goto :goto_0

    .line 742
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBanSongList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreType:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreVisible()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 293
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreVisible:I

    goto :goto_0
.end method

.method public getIsMyStation()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    return v0
.end method

.method public getIsTurned()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsTurned:Z

    return v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getMyStationOrdinal()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    return v0
.end method

.method public getNeedUpdateStationInfo()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNeedUpdateStation:I

    return v0
.end method

.method public getNextTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNextTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineLastSyncTime()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mOfflineLastSyncedTime:J

    return-wide v0
.end method

.method public getOfflineSyncState()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mOfflineSyncState:I

    return v0
.end method

.method public getPrevTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mPrevTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeeds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 683
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Seed;

    .line 685
    .local v3, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v0, "ba":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    .end local v0    # "ba":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .end local v3    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_0
    return-object v2
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    return v0
.end method

.method public getStation()Lcom/samsung/android/app/music/common/model/Station;
    .locals 0

    .prologue
    .line 677
    return-object p0
.end method

.method public getStationSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getStayingTime()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStayingTime:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "isContainted":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    .line 225
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 232
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_1
    if-nez v0, :cond_2

    .line 233
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 750
    const/16 v0, 0x11

    .line 751
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 752
    return v0

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isAudioAdYn()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoriteGenreStation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 371
    const-string v1, "01"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiddenStation()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isImageAdYn()Z
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoAdYn()Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBanSongList(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    return-void
.end method

.method public setArtistSeeds(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 526
    return-void
.end method

.method public setBannedPIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "bannedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    .line 393
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mDescription:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreName:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setGenreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "genreId"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setGenreLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "genreLastUpdated"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreLastUpdated:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setGenreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "genreType"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreType:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setGenreVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreVisible:I

    .line 298
    return-void
.end method

.method public setIsMyStation(I)V
    .locals 0
    .param p1, "isMyStation"    # I

    .prologue
    .line 561
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    .line 562
    return-void
.end method

.method public setIsTurned(Z)V
    .locals 0
    .param p1, "isTurned"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsTurned:Z

    .line 570
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mLastUpdated:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setMyStationOrdinal(I)V
    .locals 0
    .param p1, "ordinal"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    .line 306
    return-void
.end method

.method public setNeedUpdateStationInfo(I)V
    .locals 0
    .param p1, "update"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mNeedUpdateStation:I

    .line 331
    return-void
.end method

.method public setNextTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_id"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mNextTrackId:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setOfflineLastSyncTime(J)V
    .locals 1
    .param p1, "lastSync"    # J

    .prologue
    .line 537
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mOfflineLastSyncedTime:J

    .line 538
    return-void
.end method

.method public setOfflineSyncState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mOfflineSyncState:I

    .line 546
    return-void
.end method

.method public setPrevTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_id"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mPrevTrackId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setSeedList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "seeds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    .line 698
    return-void
.end method

.method public setSkipCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    .line 250
    return-void
.end method

.method public setStationSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationSubType:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setStayingTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 717
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mStayingTime:I

    .line 718
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mTag:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_id"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackId:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setTracks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 243
    return-void
.end method

.method public setisAudioAdYn(Z)V
    .locals 1
    .param p1, "isY"    # Z

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 414
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setisHiddenStation(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    .line 383
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setisImageAdYn(Z)V
    .locals 1
    .param p1, "isY"    # Z

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    .line 439
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setisVideoAdYn(Z)V
    .locals 1
    .param p1, "isY"    # Z

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 425
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Station ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 727
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getSkipCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

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
    .line 161
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/SimpleStation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mIsMyStation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mPrevTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNextTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mGenreType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mMyStationOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mLastUpdated:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSeeds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 176
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mSkipCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mStationSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->hiddenYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mAudioAdYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mImageAdYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Station;->mNeedUpdateStation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
