.class public Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "GenreDetailArtistResponseModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;",
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
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moreYn"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->artistList:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->moreYn:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
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
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public hasMoreContent()Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->moreYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
