.class public Lcom/samsung/android/app/music/common/model/Seed;
.super Ljava/lang/Object;
.source "Seed.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private explicit:Ljava/lang/String;

.field private mSeedId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seedId"
    .end annotation
.end field

.field private mSeedImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private mSeedName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seedName"
    .end annotation
.end field

.field private mSeedState:I

.field private mSeedType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seedType"
    .end annotation
.end field

.field private mStationId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/app/music/common/model/Seed$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/Seed$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/Seed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "seedType"    # Ljava/lang/String;
    .param p3, "seedId"    # Ljava/lang/String;
    .param p4, "seedName"    # Ljava/lang/String;
    .param p5, "seedImageUrl"    # Ljava/lang/String;
    .param p6, "stationId"    # Ljava/lang/String;
    .param p7, "trackName"    # Ljava/lang/String;
    .param p8, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p9, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedState:I

    .line 63
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedId:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedName:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedImageUrl:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/Seed;->mStationId:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/Seed;->trackTitle:Ljava/lang/String;

    .line 69
    if-eqz p8, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->explicit:Ljava/lang/String;

    .line 70
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    .line 71
    return-void

    .line 69
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedState:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedImageUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mStationId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->trackTitle:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->explicit:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    .line 88
    return-void
.end method

.method public static convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Seed;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 193
    const-string/jumbo v7, "seed_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "seedId":Ljava/lang/String;
    const-string/jumbo v7, "seed_name"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "seedName":Ljava/lang/String;
    const-string/jumbo v7, "seed_type"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "seedType":Ljava/lang/String;
    const-string/jumbo v7, "seed_state"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 197
    .local v0, "seedState":I
    const-string/jumbo v7, "seed_imageurl"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "seedImageUrl":Ljava/lang/String;
    const-string/jumbo v7, "station_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "stationId":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v6

    return-object v6
.end method

.method public static createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;
    .locals 10
    .param p0, "state"    # I
    .param p1, "seedType"    # Ljava/lang/String;
    .param p2, "seedId"    # Ljava/lang/String;
    .param p3, "seedName"    # Ljava/lang/String;
    .param p4, "seedImageUrl"    # Ljava/lang/String;
    .param p5, "stationId"    # Ljava/lang/String;
    .param p6, "trackName"    # Ljava/lang/String;
    .param p7, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)",
            "Lcom/samsung/android/app/music/common/model/Seed;"
        }
    .end annotation

    .prologue
    .line 57
    .local p8, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v0, Lcom/samsung/android/app/music/common/model/Seed;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/common/model/Seed;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 58
    .local v0, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
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
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getCoverArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedState()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedState:I

    return v0
.end method

.method public getSeedSubName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    const-string v4, "1"

    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "01"

    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_0
    const-string v2, ""

    .line 157
    :cond_1
    :goto_0
    return-object v2

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "artists":Ljava/lang/String;
    const/4 v3, 0x1

    .line 143
    .local v3, "isFirst":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 144
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "artistName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 146
    if-eqz v3, :cond_4

    .line 147
    move-object v2, v1

    .line 151
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 149
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 157
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .end local v1    # "artistName":Ljava/lang/String;
    .end local v2    # "artists":Ljava/lang/String;
    .end local v3    # "isFirst":Z
    :cond_5
    const-string v2, ""

    goto :goto_0
.end method

.method public getSeedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isExplictSeed()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->explicit:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->explicit:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public setSeedState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedState:I

    .line 117
    return-void
.end method

.method public setSeedType(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedType"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/Seed;->mStationId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mSeedImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->explicit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/Seed;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    return-void
.end method
