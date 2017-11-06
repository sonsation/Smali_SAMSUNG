.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
.super Ljava/lang/Object;
.source "StoreMainContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

.field artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field contentId:Ljava/lang/String;

.field contentOrder:I

.field contentTitle:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field description:Ljava/lang/String;

.field explicit:I

.field imageBigUrl:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field length:I

.field mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

.field pickInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

.field rankingBadge:Ljava/lang/String;

.field rankingChg:I

.field stationInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

.field trackInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentOrder:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->explicit:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->length:I

    .line 61
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    .line 62
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    .line 63
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    .line 64
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    .line 65
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingChg:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentOrder()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentOrder:I

    return v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->explicit:I

    return v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->length:I

    return v0
.end method

.method public getMvInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    return-object v0
.end method

.method public getPickInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    return-object v0
.end method

.method public getRankingBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingChg()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingChg:I

    return v0
.end method

.method public getStationInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    return-object v0
.end method

.method public getTrackInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    iget v1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->explicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingChg:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbumInfo(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;)V
    .locals 0
    .param p1, "albumInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    .line 230
    return-void
.end method

.method public setArtistList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    .line 254
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setContentOrder(I)V
    .locals 0
    .param p1, "contentOrder"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentOrder:I

    .line 166
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setExplicit(I)V
    .locals 0
    .param p1, "explicit"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->explicit:I

    .line 198
    return-void
.end method

.method public setImageBigUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageBigUrl"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->length:I

    .line 206
    return-void
.end method

.method public setMvInfo(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;)V
    .locals 0
    .param p1, "mvInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    .line 246
    return-void
.end method

.method public setPickInfo(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;)V
    .locals 0
    .param p1, "pickInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    .line 238
    return-void
.end method

.method public setStationInfo(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;)V
    .locals 0
    .param p1, "stationInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    .line 214
    return-void
.end method

.method public setTrackInfo(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;)V
    .locals 0
    .param p1, "trackInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->contentOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainPickInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingChg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
