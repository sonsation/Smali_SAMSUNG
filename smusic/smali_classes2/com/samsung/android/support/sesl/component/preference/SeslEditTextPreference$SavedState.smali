.class Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;
.source "SeslEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;
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
            "Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 144
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void
.end method
