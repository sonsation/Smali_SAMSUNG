.class Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;
.source "SeslSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;
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
            "Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->progress:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->max:I

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 241
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return-void
.end method
