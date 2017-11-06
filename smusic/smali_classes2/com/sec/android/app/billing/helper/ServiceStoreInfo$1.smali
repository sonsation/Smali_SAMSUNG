.class Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;
.super Ljava/lang/Object;
.source "ServiceStoreInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;->newArray(I)[Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object v0

    return-object v0
.end method
