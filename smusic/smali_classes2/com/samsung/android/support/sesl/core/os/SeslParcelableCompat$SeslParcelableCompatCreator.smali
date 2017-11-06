.class Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;
.super Ljava/lang/Object;
.source "SeslParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeslParcelableCompatCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator<TT;>;"
    .local p1, "callbacks":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;->mCallbacks:Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;

    .line 44
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;->mCallbacks:Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;->mCallbacks:Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;->mCallbacks:Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
