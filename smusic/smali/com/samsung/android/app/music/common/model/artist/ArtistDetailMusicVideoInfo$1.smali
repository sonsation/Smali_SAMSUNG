.class final Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo$1;
.super Ljava/lang/Object;
.source "ArtistDetailMusicVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;
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
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 22
    new-array v0, p1, [Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo$1;->newArray(I)[Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;

    move-result-object v0

    return-object v0
.end method
