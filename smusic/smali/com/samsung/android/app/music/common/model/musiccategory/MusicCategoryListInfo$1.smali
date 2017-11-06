.class final Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo$1;
.super Ljava/lang/Object;
.source "MusicCategoryListInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 42
    new-array v0, p1, [Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo$1;->newArray(I)[Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    move-result-object v0

    return-object v0
.end method
