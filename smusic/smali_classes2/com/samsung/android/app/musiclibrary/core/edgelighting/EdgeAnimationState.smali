.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;
.super Ljava/lang/Object;
.source "EdgeAnimationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsMultiWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->mIsMultiWindow:Z

    .line 22
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->mIsMultiWindow:Z

    .line 17
    return-void
.end method

.method private readBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeBoolean(Landroid/os/Parcel;Z)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "value"    # Z

    .prologue
    .line 51
    if-eqz p2, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->mIsMultiWindow:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->mIsMultiWindow:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 27
    return-void
.end method
