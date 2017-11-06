.class public Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
.super Ljava/lang/Object;
.source "UpdatedStation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_STATION_TYPE_DELETE:Ljava/lang/String; = "delete"

.field public static final UPDATE_STATION_TYPE_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field private banSongList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/BanSong;",
            ">;"
        }
    .end annotation
.end field

.field private providerType:Ljava/lang/String;

.field private seedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private stationDesc:Ljava/lang/String;

.field private stationGenre:Ljava/lang/String;

.field private stationId:Ljava/lang/String;

.field private stationTitle:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->providerType:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->type:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationDesc:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationGenre:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/common/model/BanSong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->banSongList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 1
    .param p1, "updateType"    # Ljava/lang/String;
    .param p2, "updateStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "soribada"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->providerType:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->type:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationDesc:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationGenre:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->banSongList:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 1
    .param p1, "updateType"    # Ljava/lang/String;
    .param p2, "updateStationName"    # Ljava/lang/String;
    .param p3, "updateStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "soribada"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->providerType:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->type:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationDesc:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationGenre:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->banSongList:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getSeedList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 124
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v9, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;

    .line 127
    .local v10, "seed":Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedEditType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    move-object v6, v4

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v11

    .line 132
    .local v11, "seed_elelemnt":Lcom/samsung/android/app/music/common/model/Seed;
    :goto_1
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v11    # "seed_elelemnt":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_0
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->getSeedName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    move v0, v7

    move-object v6, v4

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v11

    .restart local v11    # "seed_elelemnt":Lcom/samsung/android/app/music/common/model/Seed;
    goto :goto_1

    .line 134
    .end local v10    # "seed":Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;
    .end local v11    # "seed_elelemnt":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_1
    return-object v9
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public updateReqAddBansong(Ljava/lang/String;)V
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/samsung/android/app/music/common/model/BanSong;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/BanSong;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "bansong":Lcom/samsung/android/app/music/common/model/BanSong;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->banSongList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public updateReqAddSeed(Lcom/samsung/android/app/music/common/model/Seed;)V
    .locals 5
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/Seed;

    .prologue
    .line 92
    new-instance v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;

    const-string v1, "add"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, "req":Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public updateReqRemoveSeed(Lcom/samsung/android/app/music/common/model/Seed;)V
    .locals 5
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/Seed;

    .prologue
    .line 98
    new-instance v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;

    const-string v1, "delete"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "req":Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->providerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->stationGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->seedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->banSongList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 71
    return-void
.end method
