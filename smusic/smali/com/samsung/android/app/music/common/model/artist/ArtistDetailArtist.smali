.class public Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
.super Ljava/lang/Object;
.source "ArtistDetailArtist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private clkImageUrl:Ljava/lang/String;

.field private clkImageUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debutYear:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private favoriteYn:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private seedUsable:Ljava/lang/String;

.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->imageUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrlList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->section:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->category:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->debutYear:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->description:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->seedUsable:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->genre:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->trackList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "artistName"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->imageUrl:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->section:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClkImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClkImageUrlList()Ljava/util/ArrayList;
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
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebutYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->debutYear:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->seedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public isClkImageUrlListEmpty()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrlList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public isFavorite()Z
    .locals 2

    .prologue
    .line 153
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public isSeedUsable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->seedUsable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteYn"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->clkImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->debutYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->favoriteYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->seedUsable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->trackList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    return-void
.end method
