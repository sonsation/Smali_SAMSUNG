.class public Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextDevicePhysicalContextMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 167
    return-void
.end method


# virtual methods
.method public getAODReason()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AODReason"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAODStatus()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AODStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 143
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
