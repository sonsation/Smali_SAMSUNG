.class public Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;
.super Ljava/lang/Object;
.source "WifiDisplayStatusCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    }
.end annotation


# static fields
.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field private static final DEFAULT:I = -0x1

.field public static final DISPLAY_STATE_CONNECTED:I

.field public static final DISPLAY_STATE_CONNECTING:I

.field public static final DISPLAY_STATE_NOT_CONNECTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 26
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    .line 27
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    .line 28
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_NOT_CONNECTED:I

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    .line 31
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    .line 32
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_NOT_CONNECTED:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDisplayState(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 53
    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/os/Parcelable;)V

    .line 55
    .local v0, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 61
    .end local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return v1

    .line 58
    .restart local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 61
    .end local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getActiveDisplayState(Landroid/content/Intent;)I

    move-result v1

    goto :goto_0
.end method

.method public static getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I
    .locals 2
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 39
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 41
    .local v0, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 47
    .end local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return v1

    .line 44
    .restart local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 47
    .end local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)I

    move-result v1

    goto :goto_0
.end method

.method public static getAvailableDisplays(Landroid/hardware/display/DisplayManager;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;>;"
    sget-boolean v7, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v7, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v6

    .line 70
    .local v6, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    if-eqz v6, :cond_1

    .line 71
    invoke-virtual {v6}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    .line 72
    .local v2, "displayArray":[Landroid/hardware/display/SemWifiDisplay;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 73
    .local v1, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    new-instance v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;-><init>()V

    .line 75
    .local v3, "info":Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v3    # "info":Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v2    # "displayArray":[Landroid/hardware/display/SemWifiDisplay;
    :cond_1
    const/4 v0, 0x0

    .line 99
    .end local v6    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_2
    :goto_1
    return-object v0

    .line 86
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getAvailableDisplays(Landroid/hardware/display/DisplayManager;)Ljava/util/ArrayList;

    move-result-object v4

    .line 87
    .local v4, "sdlDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;>;"
    if-eqz v4, :cond_4

    .line 88
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;

    .line 89
    .local v5, "sdlDisplay":Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;
    new-instance v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;-><init>()V

    .line 90
    .restart local v3    # "info":Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    .line 91
    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    .line 92
    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 96
    .end local v3    # "info":Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    .end local v5    # "sdlDisplay":Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isScanning(Landroid/hardware/display/DisplayManager;)Z
    .locals 2
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 103
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 105
    .local v0, "status":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v1

    .line 107
    .end local v0    # "status":Landroid/hardware/display/SemWifiDisplayStatus;
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result v1

    goto :goto_0
.end method
