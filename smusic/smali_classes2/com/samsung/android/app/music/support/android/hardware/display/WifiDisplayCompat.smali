.class public Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;
.super Ljava/lang/Object;
.source "WifiDisplayCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 3
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 12
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    .line 14
    .local v1, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 16
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 22
    .end local v0    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return-object v2

    .line 20
    .restart local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 22
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 3
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 27
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    .line 29
    .local v1, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 31
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 37
    .end local v0    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return-object v2

    .line 35
    .restart local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 37
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 3
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 42
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    .line 44
    .local v1, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 46
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v2

    .line 52
    .end local v0    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return-object v2

    .line 50
    .restart local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    .end local v1    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
