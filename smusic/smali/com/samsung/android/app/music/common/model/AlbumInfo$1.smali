.class final Lcom/samsung/android/app/music/common/model/AlbumInfo$1;
.super Ljava/lang/Object;
.source "AlbumInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/AlbumInfo;
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
        "Lcom/samsung/android/app/music/common/model/AlbumInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/AlbumInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/AlbumInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/AlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/model/AlbumInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 18
    new-array v0, p1, [Lcom/samsung/android/app/music/common/model/AlbumInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo$1;->newArray(I)[Lcom/samsung/android/app/music/common/model/AlbumInfo;

    move-result-object v0

    return-object v0
.end method
