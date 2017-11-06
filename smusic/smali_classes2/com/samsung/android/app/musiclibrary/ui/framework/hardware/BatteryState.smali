.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTemperatureCheck(Z)V
    .locals 1
    .param p0, "isWorking"    # Z

    .prologue
    .line 47
    const-string v0, "music"

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/support/samsung/hardware/SecHardwareInterfaceCompat;->setBatteryADC(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method
