.class public Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
.super Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
.source "GenreInfoWithOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;-><init>(Landroid/os/Parcel;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->mOrder:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "genreId"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "order"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput p5, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->mOrder:I

    .line 31
    return-void
.end method

.method public static createGenreInforWithOrderFromDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    const-string v1, "genre_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "genre_name"

    .line 61
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genre_category_name"

    .line 62
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "genre_image_url"

    .line 63
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "genre_order"

    .line 64
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    .local v0, "infoWithOrder":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->mOrder:I

    return v0
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->mOrder:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", order : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
