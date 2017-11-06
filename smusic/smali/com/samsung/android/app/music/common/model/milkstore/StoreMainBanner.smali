.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
.super Ljava/lang/Object;
.source "StoreMainBanner.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/app/music/milk/store/BannerItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bannerOrder:I

.field bannerType:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field linkType:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field rollingTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerOrder:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->rollingTime:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBannerOrder()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerOrder:I

    return v0
.end method

.method public getBannerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRollingTime()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->rollingTime:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBannerOrder(I)V
    .locals 0
    .param p1, "bannerOrder"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerOrder:I

    .line 114
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLinkType(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkType"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRollingTime(I)V
    .locals 0
    .param p1, "rollingTime"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->rollingTime:I

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->rollingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
