.class final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "MusicRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
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
        "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 673
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 678
    new-array v0, p1, [Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$1;->newArray(I)[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method
