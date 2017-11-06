.class Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StateButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
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
            "Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrStateIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->mCurrStateIdx:I

    .line 217
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcelable;
    .param p2, "currStateIdx"    # I

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 211
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->mCurrStateIdx:I

    .line 212
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;

    .prologue
    .line 205
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->mCurrStateIdx:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->mCurrStateIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return-void
.end method
