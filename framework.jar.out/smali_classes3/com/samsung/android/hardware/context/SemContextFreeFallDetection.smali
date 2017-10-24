.class public Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextFreeFallDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextFreeFallDetection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;",
            ">;"
        }
    .end annotation
.end field

.field public static final END:I = 0x2

.field public static final START:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 187
    return-void
.end method


# virtual methods
.method public getHeight()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method
