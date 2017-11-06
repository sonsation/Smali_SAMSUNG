.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
.super Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;
.source "FavoriteArtistRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteArtistRequest"


# instance fields
.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "artistId"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    .locals 4
    .param p0, "favorite"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toContentValues(JI)Landroid/content/ContentValues;
    .locals 3
    .param p1, "rowId"    # J
    .param p3, "order"    # I

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_type"

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v1, "favorite_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v1, "cp_attrs"

    const v2, 0x80002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "data1"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "display_order"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
