.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
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
        "Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 187
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 192
    new-array v0, p1, [Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;->newArray(I)[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    move-result-object v0

    return-object v0
.end method
