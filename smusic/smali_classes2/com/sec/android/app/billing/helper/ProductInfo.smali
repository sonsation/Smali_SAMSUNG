.class public Lcom/sec/android/app/billing/helper/ProductInfo;
.super Ljava/lang/Object;
.source "ProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public currency:Ljava/lang/String;

.field public detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

.field public tax:Ljava/lang/String;

.field public taxIncluded:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/sec/android/app/billing/helper/ProductInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/ProductInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/ProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ProductInfo;
    .locals 5
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v2, Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-direct {v2}, Lcom/sec/android/app/billing/helper/ProductInfo;-><init>()V

    .line 29
    .local v2, "productInfo":Lcom/sec/android/app/billing/helper/ProductInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->tax:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    .line 33
    const-class v3, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 34
    .local v1, "parcelable":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 35
    array-length v3, v1

    new-array v3, v3, [Lcom/sec/android/app/billing/helper/DetailProductInfos;

    iput-object v3, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 40
    .end local v0    # "i":I
    :cond_0
    return-object v2

    .line 37
    .restart local v0    # "i":I
    :cond_1
    iget-object v4, v2, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    aget-object v3, v1, v0

    check-cast v3, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    aput-object v3, v4, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->tax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 25
    return-void
.end method
