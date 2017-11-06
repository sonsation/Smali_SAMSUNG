.class public Lcom/samsung/android/app/music/support/sdl/android/os/DebugSdlCompat;
.super Ljava/lang/Object;
.source "DebugSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProductDev()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
