.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
.super Ljava/lang/Object;
.source "StoreMainCategoryGenre.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private genreId:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->imageUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "genreId"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->imageUrl:Ljava/lang/String;

    .line 16
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

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->genreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
