.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "SeslActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 691
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 700
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    return-void
.end method