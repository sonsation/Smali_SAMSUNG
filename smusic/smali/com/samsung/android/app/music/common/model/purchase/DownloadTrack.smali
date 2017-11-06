.class public Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
.super Ljava/lang/Object;
.source "DownloadTrack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private audioExpiredTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioExpiredTime"
    .end annotation
.end field

.field private bitrate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation
.end field

.field private codec:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codec"
    .end annotation
.end field

.field private deleteUrl:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadUrl"
    .end annotation
.end field

.field private downloadedSize:J

.field private drmType:Ljava/lang/String;

.field private expiredTileLong:J

.field private id3v1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id3v1"
    .end annotation
.end field

.field private id3v2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id3v2"
    .end annotation
.end field

.field private id3v2FileSize:J

.field private isDownloading:I

.field private length:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field private size:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private trackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end field

.field private trackNumber:I

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackTitle"
    .end annotation
.end field

.field private trackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string/jumbo v0, "track_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    .line 97
    const-string v0, "download_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    .line 98
    const-string v0, "expire_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    .line 99
    const-string v0, "expire_time_long"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->expiredTileLong:J

    .line 100
    const-string v0, "file_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->size:J

    .line 101
    const-string v0, "length"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->length:J

    .line 102
    const-string v0, "bitrate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    .line 103
    const-string v0, "codec"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    .line 104
    const-string v0, "id3v1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    .line 105
    const-string v0, "id3v2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    .line 106
    const-string v0, "id3v2_filesize"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2FileSize:J

    .line 107
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "track_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackNumber:I

    .line 109
    const-string/jumbo v0, "track_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackType:I

    .line 110
    const-string/jumbo v0, "order_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    .line 111
    const-string v0, "downloaded_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadedSize:J

    .line 112
    const-string v0, "is_downloading"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->isDownloading:I

    .line 113
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    .line 114
    const-string v0, "delete_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    .line 115
    const-string v0, "drm_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->size:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->length:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static CursorToTrackDownload(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 165
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;-><init>(Landroid/database/Cursor;)V

    .line 167
    .local v0, "track":Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadedSize:J

    return-wide v0
.end method

.method public getDrmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTimeLong()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->expiredTileLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId3v1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    return-object v0
.end method

.method public getId3v2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    return-object v0
.end method

.method public getId3v2FileSize()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2FileSize:J

    return-wide v0
.end method

.method public getIsDownloading()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->isDownloading:I

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->size:J

    return-wide v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackNumber:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mergeDownloadInfo(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V
    .locals 2
    .param p1, "src"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->expiredTileLong:J

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackType:I

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getId3v2FileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2FileSize:J

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadedSize:J

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackNumber()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackNumber:I

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getIsDownloading()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->isDownloading:I

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadedSize:J

    .line 245
    return-void
.end method

.method public toContentValue()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v0, "value":Landroid/content/ContentValues;
    const-string/jumbo v1, "track_id"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "codec"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "bitrate"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "file_size"

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string v1, "length"

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->length:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v1, "download_url"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "expire_time"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "expire_time_long"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    .line 180
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string/jumbo v1, "track_type"

    iget v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v1, "id3v1"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "id3v2"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "drm_type"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "delete_url"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "downloaded_size"

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
