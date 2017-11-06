.class final Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 12414
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12411
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 12419
    new-array v0, p1, [Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12411
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState$1;->newArray(I)[Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method
