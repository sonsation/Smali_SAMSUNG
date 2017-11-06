.class public Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;
.super Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;
.source "SeslToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2325
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState$1;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat;->newCreator(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2306
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2309
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->expandedMenuItemId:I

    .line 2311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->isOverflowOpen:Z

    .line 2312
    return-void

    .line 2311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2315
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2316
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2320
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2321
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    return-void

    .line 2322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
