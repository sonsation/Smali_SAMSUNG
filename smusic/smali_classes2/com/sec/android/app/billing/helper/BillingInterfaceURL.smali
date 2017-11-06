.class public Lcom/sec/android/app/billing/helper/BillingInterfaceURL;
.super Ljava/lang/Object;
.source "BillingInterfaceURL.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public addGiftCardnCouponURL:Ljava/lang/String;

.field public getGiftCardnCouponURL:Ljava/lang/String;

.field public getTaxInfoURL:Ljava/lang/String;

.field public notiPaymentResultURL:Ljava/lang/String;

.field public requestOrderURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/BillingInterfaceURL$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/BillingInterfaceURL;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;-><init>()V

    .line 29
    .local v0, "billingInterfaceURL":Lcom/sec/android/app/billing/helper/BillingInterfaceURL;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->addGiftCardnCouponURL:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getGiftCardnCouponURL:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getTaxInfoURL:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->notiPaymentResultURL:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->requestOrderURL:Ljava/lang/String;

    .line 34
    return-object v0
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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->addGiftCardnCouponURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getGiftCardnCouponURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getTaxInfoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->notiPaymentResultURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->requestOrderURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
