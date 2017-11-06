.class public Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "CheckSubscriptionUser.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadableUser:Ljava/lang/String;

.field private drmProductUser:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private subscriptionUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->subscriptionUser:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->downloadableUser:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->drmProductUser:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->orderId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadableUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->downloadableUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmProductUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->drmProductUser:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->subscriptionUser:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->subscriptionUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->downloadableUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->drmProductUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
