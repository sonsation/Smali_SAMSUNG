.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
.super Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;
.source "FavoriteAlbumRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteAlbumRequest"


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->artistName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ablumId"    # Ljava/lang/String;
    .param p2, "albumTitle"    # Ljava/lang/String;
    .param p3, "artistName"    # Ljava/lang/String;
    .param p4, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumTitle:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->artistName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromAlbum(Lcom/samsung/android/app/music/common/model/Album;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    .locals 5
    .param p0, "album"    # Lcom/samsung/android/app/music/common/model/Album;

    .prologue
    .line 50
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Album;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    return-object v0
.end method

.method public static fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    .locals 5
    .param p0, "favoriteList"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 57
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAblumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public setAblumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ablumId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumTitle:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->artistName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toContentValues(JI)Landroid/content/ContentValues;
    .locals 3
    .param p1, "rowId"    # J
    .param p3, "order"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_type"

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "favorite_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAblumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v1, "cp_attrs"

    const v2, 0x80002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "data1"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "display_order"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void
.end method
