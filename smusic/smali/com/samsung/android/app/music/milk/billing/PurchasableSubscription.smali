.class public Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
.super Lcom/samsung/android/app/music/milk/billing/PurchasableItem;
.source "PurchasableSubscription.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrderId:Ljava/lang/String;

.field private mOrderType:Ljava/lang/String;

.field private mPricingCode:Ljava/lang/String;

.field private mSubscriptionStatus:Ljava/lang/String;

.field private mVoucherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;-><init>(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mOrderId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mOrderType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mPricingCode:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mSubscriptionStatus:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mVoucherId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getPricingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mPricingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mVoucherId:Ljava/lang/String;

    return-object v0
.end method

.method public setPricingCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPricingCode"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mPricingCode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVoucherId(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherid"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mVoucherId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mOrderType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mPricingCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mSubscriptionStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->mVoucherId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
