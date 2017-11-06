.class public Lcom/samsung/android/app/music/common/model/TrackDetail;
.super Lcom/samsung/android/app/music/common/model/SimpleTrack;
.source "TrackDetail.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackDetail;",
            ">;"
        }
    .end annotation
.end field

.field private static final FREE_DOWNLOADABLE:Ljava/lang/String; = "2"

.field private static final ONLY_STREAMING:Ljava/lang/String; = "0"

.field private static final PURCHASABLE:Ljava/lang/String; = "1"


# instance fields
.field celebYn:Ljava/lang/String;

.field favoriteYn:Ljava/lang/String;

.field lyricsUrl:Ljava/lang/String;

.field mvExplicit:I

.field mvId:Ljava/lang/String;

.field seedUsable:Ljava/lang/String;

.field songPurchasable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/samsung/android/app/music/common/model/TrackDetail$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/TrackDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvId:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvExplicit:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->celebYn:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public canCreateStation()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSeedUsableArtist()Lcom/samsung/android/app/music/common/model/artist/Artist;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsableArtist()Lcom/samsung/android/app/music/common/model/artist/Artist;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 86
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->isSeedUsable()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    :cond_3
    move-object v0, v2

    .line 90
    goto :goto_0
.end method

.method public getSongPurchasable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    return-object v0
.end method

.method public hasLyric()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMusicVideo()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCelebTrack()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->celebYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDownloadable()Z
    .locals 2

    .prologue
    .line 61
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->songPurchasable:Ljava/lang/String;

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

.method public isFavorite()Z
    .locals 2

    .prologue
    .line 57
    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

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

.method public isMvExplicit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvExplicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSongSeedUsable()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

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

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteYn"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mvId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fav - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

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
    .line 110
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->seedUsable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->mvExplicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackDetail;->celebYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
