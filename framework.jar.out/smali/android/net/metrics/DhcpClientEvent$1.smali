.class final Landroid/net/metrics/DhcpClientEvent$1;
.super Ljava/lang/Object;
.source "DhcpClientEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DhcpClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/metrics/DhcpClientEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DhcpClientEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    new-instance v0, Landroid/net/metrics/DhcpClientEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/DhcpClientEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpClientEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/metrics/DhcpClientEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DhcpClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/metrics/DhcpClientEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    new-array v0, p1, [Landroid/net/metrics/DhcpClientEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/net/metrics/DhcpClientEvent$1;->newArray(I)[Landroid/net/metrics/DhcpClientEvent;

    move-result-object v0

    return-object v0
.end method
