.class public Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "GenreDetailAlbumResponseModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->contentList:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->contentList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->contentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 38
    return-void
.end method
