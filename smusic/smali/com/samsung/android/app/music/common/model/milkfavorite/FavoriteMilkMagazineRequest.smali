.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
.super Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;
.source "FavoriteMilkMagazineRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteMilkPickRequest"


# instance fields
.field private pickId:Ljava/lang/String;

.field private pickTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "milkPickId"    # Ljava/lang/String;
    .param p2, "milkPickTitle"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    .locals 4
    .param p0, "favorite"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    return-object v0
.end method

.method public static fromPick(Lcom/samsung/android/app/music/common/model/PickInfo;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    .locals 4
    .param p0, "info"    # Lcom/samsung/android/app/music/common/model/PickInfo;

    .prologue
    .line 45
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickTitle()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/PickInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, "magazineRequest":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getMilkPickId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    return-object v0
.end method

.method public getMilkPickTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setMilkPickId(Ljava/lang/String;)V
    .locals 0
    .param p1, "milkPickId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMilkPickTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "milkPickTitle"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toContentValues(JI)Landroid/content/ContentValues;
    .locals 3
    .param p1, "rowId"    # J
    .param p3, "order"    # I

    .prologue
    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_type"

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "favorite_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v1, "cp_attrs"

    const v2, 0x80002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "data1"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "display_order"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pickId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pickTitle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteImageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->pickTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
