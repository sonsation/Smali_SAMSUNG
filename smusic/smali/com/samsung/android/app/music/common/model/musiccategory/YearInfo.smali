.class public Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
.super Ljava/lang/Object;
.source "YearInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "YearInfo"


# instance fields
.field public imageUrl:Ljava/lang/String;

.field public periodId:Ljava/lang/String;

.field public periodName:Ljava/lang/String;

.field public yearId:Ljava/lang/String;

.field public yearName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->imageUrl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "periodId"    # Ljava/lang/String;
    .param p2, "yearId"    # Ljava/lang/String;
    .param p3, "yearName"    # Ljava/lang/String;
    .param p4, "periodName"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodName:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->imageUrl:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static createPeriodInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    new-instance v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    const-string/jumbo v1, "year_period_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "year_id"

    .line 82
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "year_name"

    .line 83
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "year_period_name"

    .line 84
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "year_image_url"

    .line 85
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "yearInfo":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodId:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodName:Ljava/lang/String;

    return-object v0
.end method

.method public getYearId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearId:Ljava/lang/String;

    return-object v0
.end method

.method public getYearName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
