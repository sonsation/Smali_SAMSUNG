.class public Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;
.super Ljava/lang/Object;
.source "RecommendRadioBanner.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/app/music/milk/store/BannerItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bannerOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bannerOrder"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private linkType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkType"
    .end annotation
.end field

.field private linkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkUrl"
    .end annotation
.end field

.field private rollingTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rollingTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->imageUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkType:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->bannerOrder:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->rollingTime:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "rollingTime"    # I
    .param p3, "bannerOrder"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->imageUrl:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->rollingTime:I

    .line 31
    iput p3, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->bannerOrder:I

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getBannerOrder()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->bannerOrder:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRollingTime()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->rollingTime:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rolling - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->getRollingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->bannerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->rollingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
