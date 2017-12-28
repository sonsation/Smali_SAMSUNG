.class public Lcom/android/launcher3/common/base/view/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/PagedView;
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
            "Lcom/android/launcher3/common/base/view/PagedView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2242
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/view/PagedView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView$SavedState;->currentPage:I

    .line 2233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView$SavedState;->currentPage:I

    .line 2234
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/common/base/view/PagedView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/launcher3/common/base/view/PagedView$1;

    .prologue
    .line 2224
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2228
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView$SavedState;->currentPage:I

    .line 2229
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2238
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2239
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    return-void
.end method
