.class final Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState$1;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;
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
        "Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2019
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2023
    new-array v0, p1, [Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState$1;->newArray(I)[Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method