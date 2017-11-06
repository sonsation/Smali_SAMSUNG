.class public Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "ArtistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field artistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->artistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->artistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->artistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    return-void
.end method
