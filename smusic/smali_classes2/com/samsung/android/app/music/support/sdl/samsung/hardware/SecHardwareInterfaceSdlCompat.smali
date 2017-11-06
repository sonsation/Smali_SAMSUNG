.class public Lcom/samsung/android/app/music/support/sdl/samsung/hardware/SecHardwareInterfaceSdlCompat;
.super Ljava/lang/Object;
.source "SecHardwareInterfaceSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "app"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 8
    invoke-static {p0, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 9
    return-void
.end method
