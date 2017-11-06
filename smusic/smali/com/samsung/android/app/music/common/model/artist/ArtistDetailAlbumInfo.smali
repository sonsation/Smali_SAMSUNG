.class public Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "ArtistDetailAlbumInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/common/model/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;->albumList:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 49
    const/4 v2, 0x0

    .line 59
    :cond_0
    return-object v2

    .line 52
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Album;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;->albumList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Album;

    .line 54
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "albumCategory":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;->albumList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 40
    return-void
.end method
