.class Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;
.super Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1439
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState$1;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat;->newCreator(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1429
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    .line 1431
    return-void

    .line 1430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1426
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1435
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1436
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    return-void

    .line 1436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
