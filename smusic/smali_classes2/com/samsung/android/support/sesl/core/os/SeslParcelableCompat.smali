.class public final Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat;
.super Ljava/lang/Object;
.source "SeslParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "callbacks":Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;, "Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks<TT;>;"
    new-instance v0, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat$SeslParcelableCompatCreator;-><init>(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
