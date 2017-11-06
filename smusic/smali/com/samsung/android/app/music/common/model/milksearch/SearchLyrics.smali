.class public Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
.super Ljava/lang/Object;
.source "SearchLyrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation
.end field

.field private partialLyrics:Ljava/lang/String;

.field private thumbImgUrl:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->partialLyrics:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->albumId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackTitle:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->thumbImgUrl:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 119
    :cond_0
    return-object v0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 116
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    const-string v0, ", "

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPartialLyrics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->partialLyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->thumbImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setPartialLyrics(Ljava/lang/String;)V
    .locals 0
    .param p1, "partialLyrics"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->partialLyrics:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toSimpleTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 7

    .prologue
    .line 96
    new-instance v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 97
    .local v2, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageUrl(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getArtistList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;

    .line 104
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;
    new-instance v4, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 108
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->partialLyrics:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->thumbImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
