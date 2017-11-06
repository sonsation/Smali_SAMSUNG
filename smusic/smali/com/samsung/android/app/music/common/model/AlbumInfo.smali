.class public Lcom/samsung/android/app/music/common/model/AlbumInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "AlbumInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumInfo:Lcom/samsung/android/app/music/common/model/Album;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/samsung/android/app/music/common/model/AlbumInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AlbumInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 30
    const-class v0, Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Album;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    .line 31
    return-void
.end method

.method public static create(Lcom/samsung/android/app/music/common/model/Album;)Lcom/samsung/android/app/music/common/model/AlbumInfo;
    .locals 1
    .param p0, "album"    # Lcom/samsung/android/app/music/common/model/Album;

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/app/music/common/model/AlbumInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AlbumInfo;-><init>()V

    .line 35
    .local v0, "info":Lcom/samsung/android/app/music/common/model/AlbumInfo;
    iput-object p0, v0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getAlbumInfo()Lcom/samsung/android/app/music/common/model/Album;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
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
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getArtistList()Ljava/util/List;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getTrackList()Ljava/util/List;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTrackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/model/Album;->trackList:Ljava/util/List;

    .line 61
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n[album - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/AlbumInfo;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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
    .line 65
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumInfo;->albumInfo:Lcom/samsung/android/app/music/common/model/Album;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    return-void
.end method
