.class public Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "ArtistDetailRelatedArtistInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->artistList:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->artistList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$2;-><init>(Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 39
    return-void
.end method
