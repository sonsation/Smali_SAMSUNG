.class public Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;
.super Ljava/lang/Object;
.source "RecommendStationFirstTrack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumArtUrl:Ljava/lang/String;

.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field trackId:Ljava/lang/String;

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->trackId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->trackTitle:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumArtUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumTitle:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->artistList:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationFirstTrack;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    return-void
.end method
