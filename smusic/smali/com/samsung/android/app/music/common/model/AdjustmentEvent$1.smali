.class final Lcom/samsung/android/app/music/common/model/AdjustmentEvent$1;
.super Ljava/lang/Object;
.source "AdjustmentEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/app/music/common/model/AdjustmentEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    new-instance v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 27
    new-array v0, p1, [Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent$1;->newArray(I)[Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    move-result-object v0

    return-object v0
.end method
