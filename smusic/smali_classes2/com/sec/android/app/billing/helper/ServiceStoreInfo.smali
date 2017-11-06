.class public Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
.super Ljava/lang/Object;
.source "ServiceStoreInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public billingInterfaceURL:Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

.field public country:Ljava/lang/String;

.field public serviceURL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public telNoForCS:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 26
    new-instance v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;-><init>()V

    .line 27
    .local v0, "serviceStoreInfo":Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->country:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->serviceURL:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->telNoForCS:Ljava/lang/String;

    .line 30
    const-class v1, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->billingInterfaceURL:Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    .line 31
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->serviceURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->telNoForCS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->billingInterfaceURL:Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    return-void
.end method
