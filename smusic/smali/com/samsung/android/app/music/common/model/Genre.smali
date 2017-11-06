.class public Lcom/samsung/android/app/music/common/model/Genre;
.super Ljava/lang/Object;
.source "Genre.java"


# instance fields
.field private genreDisplayName:Ljava/lang/String;

.field private genreId:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private genreType:Ljava/lang/String;

.field private lastUpdateTime:Ljava/lang/String;

.field private mIsHiddenGnere:Z

.field private mStations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation
.end field

.field private visible:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/samsung/android/app/music/common/model/Genre;->visible:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->mStations:Ljava/util/Collection;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreType:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/model/Genre;->mIsHiddenGnere:Z

    .line 24
    return-void
.end method

.method public static createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/common/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    return-object v0
.end method


# virtual methods
.method public addStation(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 1
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->mStations:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 99
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 103
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/common/model/Genre;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGenreDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreType:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->lastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStationList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->mStations:Ljava/util/Collection;

    return-object v0
.end method

.method public getVisible()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->visible:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 116
    const/16 v0, 0x11

    .line 117
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 118
    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isHiddenGenre()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->mIsHiddenGnere:Z

    return v0
.end method

.method public resetVisible()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setGenreDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "genreName"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreDisplayName:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public setGenreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Genre;->genreType:Ljava/lang/String;

    return-object v0
.end method

.method public setHiddenGenre(Z)V
    .locals 0
    .param p1, "isHiddenGnere"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/model/Genre;->mIsHiddenGnere:Z

    .line 71
    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Genre;->lastUpdateTime:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setStationList(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "stationList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/app/music/common/model/Station;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Genre;->mStations:Ljava/util/Collection;

    .line 91
    return-void
.end method

.method public setVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Genre;->visible:I

    .line 59
    return-void
.end method
