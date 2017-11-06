.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;
.super Ljava/lang/Object;
.source "DisplayManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;,
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;,
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field private static final IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

.field private static final NORMAL:I = 0x0

.field private static final UNDEFINED:I = -0x1

.field public static final WFD_APP_STATE_PAUSE:I = 0x2

.field public static final WFD_APP_STATE_RESUME:I = 0x1

.field public static final WFD_APP_STATE_SETUP:I = 0x0

.field public static final WFD_APP_STATE_TEARDOWN:I = 0x3

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x836

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 36
    :cond_0
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 44
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_2

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;-><init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    .line 49
    :goto_1
    return-void

    .line 39
    :cond_1
    const-string v0, "android.hardware.display.WifiDisplayStatus"

    const-string v1, "CONN_STATE_CHANGEPLAYER_MUSIC"

    const/4 v2, 0x0

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;-><init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    return v0
.end method

.method public static connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "mode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public static disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 67
    return-void
.end method

.method private static getWfdAppState(I)Landroid/hardware/display/DisplayManager$WfdAppState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Landroid/hardware/display/DisplayManager$WfdAppState;
    packed-switch p0, :pswitch_data_0

    .line 114
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    sget-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    .line 110
    goto :goto_0

    .line 98
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
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    return v0
.end method

.method public static scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 83
    return-void
.end method

.method public static setActivityState(Landroid/hardware/display/DisplayManager;I)V
    .locals 1
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p1, "state"    # I

    .prologue
    .line 90
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->getWfdAppState(I)Landroid/hardware/display/DisplayManager$WfdAppState;

    move-result-object v0

    .line 91
    .local v0, "was":Landroid/hardware/display/DisplayManager$WfdAppState;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p0, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 87
    return-void
.end method
