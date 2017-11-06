.class public Lcom/samsung/android/app/music/service/milk/NetworkTransportInitException;
.super Ljava/lang/Throwable;
.source "NetworkTransportInitException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "StartClient(Time) response is not success"

    return-object v0
.end method
