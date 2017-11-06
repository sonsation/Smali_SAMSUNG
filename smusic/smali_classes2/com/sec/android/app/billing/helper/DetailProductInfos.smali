.class public Lcom/sec/android/app/billing/helper/DetailProductInfos;
.super Ljava/lang/Object;
.source "DetailProductInfos.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public amount:Ljava/lang/String;

.field public optional1:Ljava/lang/String;

.field public pricingTypeCode:Ljava/lang/String;

.field public productID:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public subscriptionDate:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tax:Ljava/lang/String;

.field public validityPeriod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/sec/android/app/billing/helper/DetailProductInfos$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/DetailProductInfos$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/DetailProductInfos;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/DetailProductInfos;-><init>()V

    .line 35
    .local v0, "detailProductInfos":Lcom/sec/android/app/billing/helper/DetailProductInfos;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->amount:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->optional1:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->pricingTypeCode:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productID:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productName:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->subscriptionDate:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->tax:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->validityPeriod:Ljava/lang/String;

    .line 43
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->optional1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->pricingTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->subscriptionDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->tax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/DetailProductInfos;->validityPeriod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
