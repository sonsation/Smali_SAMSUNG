.class public Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field public static final WFD_APP_STATE_PAUSE:I = 0x2

.field public static final WFD_APP_STATE_RESUME:I = 0x1

.field public static final WFD_APP_STATE_SETUP:I = 0x0

.field public static final WFD_APP_STATE_TEARDOWN:I = 0x3

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

.field private static sCheckScreenSharingSupported:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "android.intent.action.WIFI_DISPLAY"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    :goto_3
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    goto :goto_1

    .line 35
    :cond_2
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    goto :goto_2

    .line 39
    :cond_3
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 94
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    goto :goto_0
.end method

.method public static checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    .line 54
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "mode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method private static getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    packed-switch p0, :pswitch_data_0

    .line 154
    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 147
    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 150
    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 2
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    const/4 v0, 0x1

    .line 70
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 73
    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWfdSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "display"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 60
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result v1

    .line 61
    .local v1, "feature":I
    sget v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 65
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "feature":I
    :goto_0
    return v2

    .line 61
    .restart local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "feature":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "feature":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.wfd_support"

    .line 65
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static registerDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    .line 160
    return-void
.end method

.method public static scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 102
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method public static semSetWifiDisplayVolumeMuted(Landroid/hardware/display/DisplayManager;Z)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "muted"    # Z

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolumeMuted(Z)V

    .line 173
    return-void
.end method

.method public static setActiveDlnaState(Landroid/hardware/display/DisplayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 11
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "p2pMacAddress"    # Ljava/lang/String;
    .param p4, "nic"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "iconUri"    # Ljava/lang/String;
    .param p8, "state"    # I

    .prologue
    .line 130
    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 133
    .local v1, "device":Landroid/hardware/display/SemDlnaDevice;
    move/from16 v0, p8

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V

    .line 134
    return-void
.end method

.method public static setActivityState(Landroid/hardware/display/DisplayManager;I)V
    .locals 2
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "state"    # I

    .prologue
    .line 118
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 119
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object v0

    .line 120
    .local v0, "wdas":Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 126
    .end local v0    # "wdas":Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    goto :goto_0
.end method

.method public static setWifiDisplayVolume(Landroid/hardware/display/DisplayManager;I)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "volume"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolume(I)V

    .line 169
    return-void
.end method

.method public static stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 110
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method public static unregisterDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    .line 165
    return-void
.end method
