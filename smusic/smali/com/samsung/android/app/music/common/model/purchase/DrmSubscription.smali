.class public Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;
.super Ljava/lang/Object;
.source "DrmSubscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field endDate:Ljava/lang/String;

.field orderId:Ljava/lang/String;

.field startDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public toSimpleSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 44
    const-string v0, ""

    .line 45
    .local v0, "dueDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
