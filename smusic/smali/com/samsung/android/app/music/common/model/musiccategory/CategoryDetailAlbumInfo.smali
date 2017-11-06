.class public Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
.super Ljava/lang/Object;
.source "CategoryDetailAlbumInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;",
            ">;"
        }
    .end annotation
.end field

.field contentType:Ljava/lang/String;

.field explicit:I

.field imageUrl:Ljava/lang/String;

.field serviceStat:Ljava/lang/String;

.field trackId:Ljava/lang/String;

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->contentType:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackTitle:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->imageUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->explicit:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->serviceStat:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 150
    :cond_0
    return-object v0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 147
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayArtistsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    const-string v0, ", "

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->explicit:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->serviceStat:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
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

    .line 162
    iget v1, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->explicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->serviceStat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 76
    return-void
.end method
