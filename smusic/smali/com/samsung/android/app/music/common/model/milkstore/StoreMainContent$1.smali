.class final Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent$1;
.super Ljava/lang/Object;
.source "StoreMainContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
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
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent$1;->newArray(I)[Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    move-result-object v0

    return-object v0
.end method
