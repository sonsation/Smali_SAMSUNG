.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
.super Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;
.source "FavoriteTrackRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteTrackRequest"


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private mArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;

.field private trackType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Landroid/os/Parcel;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumTitle:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->mArtists:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "artistName"    # Ljava/lang/String;
    .param p4, "imgUrl"    # Ljava/lang/String;
    .param p5, "albumId"    # Ljava/lang/String;
    .param p6, "albumTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p7, "mArtists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    .line 54
    const-string v0, "2"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumId:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumTitle:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->mArtists:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public static fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    .locals 8
    .param p0, "favorite"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 81
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumId()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    return-object v0
.end method

.method public static fromTrack(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    .locals 8
    .param p0, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->mArtists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setArtists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->mArtists:Ljava/util/ArrayList;

    .line 167
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackTitle"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTrackType(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackType"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toContentValues(J)Landroid/content/ContentValues;
    .locals 5
    .param p1, "audioId"    # J

    .prologue
    .line 146
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 147
    .local v0, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v2, "audio_source_id"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " artistName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  albumId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->trackType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->mArtists:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 136
    return-void
.end method
