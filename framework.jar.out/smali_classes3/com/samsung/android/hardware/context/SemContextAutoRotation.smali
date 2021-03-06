.class public Lcom/samsung/android/hardware/context/SemContextAutoRotation;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextAutoRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAutoRotation$1;
    }
.end annotation


# static fields
.field public static final ANGLE_0:I = 0x0

.field public static final ANGLE_180:I = 0x2

.field public static final ANGLE_270:I = 0x3

.field public static final ANGLE_90:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAutoRotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE_MOBILE:I = 0x0

.field public static final DEVICE_TYPE_TABLET:I = 0x2

.field public static final DEVICE_TYPE_WIDE_TABLET:I = 0x4

.field public static final NONE:I = -0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 168
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->readFromParcel(Landroid/os/Parcel;)V

    .line 175
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 223
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method
