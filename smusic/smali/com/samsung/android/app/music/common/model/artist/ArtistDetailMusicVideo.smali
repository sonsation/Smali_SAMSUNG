.class public Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;
.super Ljava/lang/Object;
.source "ArtistDetailMusicVideo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field artistList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private explicit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "explicit"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private mvId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mvId"
    .end annotation
.end field

.field private mvTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mvTitle"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvTitle:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->imageUrl:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->explicit:I

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 90
    :cond_0
    return-object v0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 87
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
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
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    const-string v0, ", "

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->explicit:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getMvTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isExplicit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->explicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->mvTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 60
    return-void
.end method
