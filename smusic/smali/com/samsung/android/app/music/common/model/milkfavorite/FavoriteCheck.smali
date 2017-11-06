.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "FavoriteCheck.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteCheck"


# instance fields
.field public favoriteYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->favoriteYn:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteYn"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->favoriteYn:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->favoriteYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method
