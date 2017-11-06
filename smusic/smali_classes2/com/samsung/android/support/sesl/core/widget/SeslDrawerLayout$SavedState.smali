.class public Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
.super Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;
.source "SeslDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2025
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompat;->newCreator(Lcom/samsung/android/support/sesl/core/os/SeslParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2003
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1996
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    .line 2006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    .line 2007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    .line 2008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    .line 2009
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2012
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1996
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2013
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2017
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2018
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    return-void
.end method
