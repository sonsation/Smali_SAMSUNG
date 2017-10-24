.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field private static final BASE:I = 0x22000

.field public static final CONNECT_STATE_MULTI_ANGLE_RECORDER:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final POPUP_CAUSE_SCREEN_SHARING_MODE_ENABLED:I = 0x22091

.field public static final SEM_ACTION_DISMISS_WIFI_DISPLAY_POPUP:Ljava/lang/String; = "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

.field public static final SEM_ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final SEM_ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final SEM_ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final SEM_ACTION_SHOW_WIFI_DISPLAY_POPUP:Ljava/lang/String; = "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

.field public static final SEM_ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final SEM_ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final SEM_ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field public static final SEM_CONNECT_STATE_AUDIO_ONLY:I = 0xd

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_GALLERY:I = 0x7

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_MUSIC:I = 0x8

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_VIDEO:I = 0x6

.field public static final SEM_CONNECT_STATE_FRIDGE:I = 0x5

.field public static final SEM_CONNECT_STATE_MIRROR_LINK:I = 0xc

.field public static final SEM_CONNECT_STATE_NFC:I = 0x9

.field public static final SEM_CONNECT_STATE_NORMAL:I = -0x1

.field public static final SEM_CONNECT_STATE_SCREEN_SHARING_AP:I = 0xa

.field public static final SEM_CONNECT_STATE_SCREEN_SHARING_P2P:I = 0xb

.field public static final SEM_CONNECT_STATE_SIDESYNC:I = 0x3

.field public static final SEM_EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final SEM_EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final SEM_EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final SEM_EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final SEM_FINISH_SIDESYNC_APP:Ljava/lang/String; = "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

.field public static final SEM_GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

.field public static final SEM_PARAM_KEY_MUTE:Ljava/lang/String; = "mute"

.field public static final SEM_PARAM_KEY_RESUME_AUDIO_ONLY:Ljava/lang/String; = "raon"

.field public static final SEM_PARAM_KEY_RESUME_VIDEO_ONLY:Ljava/lang/String; = "rvon"

.field public static final SEM_POPUP_TYPE_AIRPLANE_MODE_ON:I = 0x2208c

.field public static final SEM_POPUP_TYPE_ALERT_RESTART:I = 0x22073

.field public static final SEM_POPUP_TYPE_CONNECTING:I = 0x2208a

.field public static final SEM_POPUP_TYPE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final SEM_POPUP_TYPE_DONGLE_UPDATE:I = 0x22078

.field public static final SEM_POPUP_TYPE_EARPHONE_OR_BT_CONNECTED:I = 0x2208e

.field public static final SEM_POPUP_TYPE_HDMI_BUSY:I = 0x22074

.field public static final SEM_POPUP_TYPE_HOTSPOT_BUSY:I = 0x22075

.field public static final SEM_POPUP_TYPE_INVALID_HDCP_KEY:I = 0x22081

.field public static final SEM_POPUP_TYPE_LIMITED_PLAYBACK_ENABLED:I = 0x22086

.field public static final SEM_POPUP_TYPE_LIMITED_RECORDING_ENABLED:I = 0x22087

.field public static SEM_POPUP_TYPE_OXYGEN_NETWORK_ENABLED:I = 0x0

.field public static final SEM_POPUP_TYPE_P2P_BUSY:I = 0x22072

.field public static final SEM_POPUP_TYPE_POWER_SAVING_ENABLED_BEFORE_STARTING:I = 0x22088

.field public static final SEM_POPUP_TYPE_POWER_SAVING_ENABLED_ON_CONNECTION:I = 0x22084

.field public static final SEM_POPUP_TYPE_SIDESYNC_RUNNING:I = 0x22085

.field public static final SEM_POPUP_TYPE_TERMINATED:I = 0x22070

.field public static final SEM_PRESENTATION_START:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field public static final SEM_WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final SEM_WIFI_DISPLAY_DETACH_BROKER:Ljava/lang/String; = "android.intent.action.DETACH_WFD_BROKER"

.field public static final SEM_WIFI_DISPLAY_NOT_ALLOWED:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

.field public static final SEM_WIFI_DISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final SEM_WIFI_DISPLAY_SINK_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

.field public static final SEM_WIFI_DISPLAY_SOURCE_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

.field public static final SEM_WIFI_DISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final SEM_WIFI_DISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final SETPARAM_TYPE_WFD_ENGINE:I = 0x1388

.field public static final SETPARAM_TYPE_WFD_SERVICE:I = 0x1389

.field public static final SS_WFD_SERVICE:Z = true

.field public static final SS_WFD_SERVICE_SCREEN_SHARING_READY:Z = false

.field public static final SS_WFD_SERVICE_WITH_DLNA:Z = true

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field public static final VIRTUAL_DISPLAY_FLAG_ALLOCATE_HWC:I = 0x200000

.field public static final VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final VIRTUAL_DISPLAY_FLAG_H_FLIP:I = 0x400000

.field public static final VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final VIRTUAL_DISPLAY_FLAG_PARTIAL_MIRROR:I = 0x100000

.field public static final VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final VIRTUAL_DISPLAY_FLAG_VIRTUAL_SCREEN:I = 0x20

.field public static final VIRTUAL_DISPLAY_FLAG_VSSCREEN:I = 0x80


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 622
    const v0, 0x22090

    sput v0, Landroid/hardware/display/DisplayManager;->SEM_POPUP_TYPE_OXYGEN_NETWORK_ENABLED:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    .line 747
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 748
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 751
    new-instance v0, Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-direct {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    .line 746
    return-void
.end method

.method private addAllDisplaysLocked(Ljava/util/ArrayList;[I)V
    .locals 4
    .param p2, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 826
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 827
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 831
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .param p2, "displayIds"    # [I
    .param p3, "matchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 840
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 841
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 844
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "assumeValid"    # Z

    .prologue
    .line 850
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    .line 851
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2

    .line 852
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 853
    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v4

    .line 852
    invoke-virtual {v3, p1, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    .line 854
    if-eqz v1, :cond_0

    .line 855
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 862
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    sget-object v4, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq v3, v4, :cond_1

    .line 864
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 865
    .local v0, "contextConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 867
    .local v2, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 868
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 873
    .end local v0    # "contextConfig":Landroid/content/res/Configuration;
    .end local v2    # "displayConfig":Landroid/content/res/Configuration;
    :cond_1
    return-object v1

    .line 857
    .restart local v1    # "display":Landroid/view/Display;
    :cond_2
    if-nez p2, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    const/4 v1, 0x0

    .local v1, "display":Landroid/view/Display;
    goto :goto_0
.end method


# virtual methods
.method public checkScreenSharingReadySupported()I
    .locals 1

    .prologue
    .line 1828
    const/4 v0, -0x1

    return v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method public createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "flags"    # I
    .param p8, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p9, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    .line 1025
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1074
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 967
    return-void
.end method

.method public enableWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 765
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 765
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 796
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v1

    .line 797
    .local v1, "displayIds":[I
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 799
    if-nez p1, :cond_1

    .line 800
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Landroid/hardware/display/DisplayManager;->addAllDisplaysLocked(Ljava/util/ArrayList;[I)V

    .line 817
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/Display;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :try_start_1
    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 817
    return-object v2

    .line 801
    :cond_1
    :try_start_2
    const-string/jumbo v2, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "desktopmode"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 808
    .local v0, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {p0, v2, v1, v4}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 809
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v1, v4}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 810
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {p0, v2, v1, v4}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 811
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {p0, v2, v1, v4}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 818
    .end local v0    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    :catchall_0
    move-exception v2

    .line 819
    :try_start_3
    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 818
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 797
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public isAuSLServiceRunning()Z
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isKDDIServiceConnected()Z

    move-result v0

    return v0

    .line 2018
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isSinkAvailable()Z
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSinkAvailable()Z

    move-result v0

    return v0
.end method

.method public isSourceAvailable()Z
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSourceAvailable()Z

    move-result v0

    return v0
.end method

.method public pauseWifiDisplay()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 950
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 887
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 886
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1545
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->renameDongle(Ljava/lang/String;)V

    .line 1543
    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 987
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public resumeWifiDisplay()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 958
    return-void
.end method

.method public semCheckExceptionalCase()I
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    .line 1576
    const-string/jumbo v0, "DisplayManager"

    const-string/jumbo v1, "semCheckExceptionalCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0}, Landroid/hardware/display/SecWifiDisplayUtil;->checkExceptionalCase()I

    move-result v0

    return v0

    .line 1579
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public semCheckScreenSharingSupported()I
    .locals 1

    .prologue
    .line 1809
    const/4 v0, 0x0

    return v0
.end method

.method public semConnectDevice(IILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "connectingMode"    # I
    .param p3, "deviceInstance"    # Ljava/lang/Object;
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 1259
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->connectDevice(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public semConnectWifiDisplay(ILjava/lang/String;)V
    .locals 1
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 1296
    return-void
.end method

.method public semConnectWifiDisplay(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithMode(ILjava/lang/String;Z)V

    .line 1314
    return-void
.end method

.method public semDisableWifiDisplay()V
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 1427
    return-void
.end method

.method public semDisconnectDevice(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectDevice(I)V

    .line 1402
    return-void
.end method

.method public semDisconnectWifiDisplay()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 1414
    return-void
.end method

.method public semEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1335
    return-void
.end method

.method public semEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1356
    return-void
.end method

.method public semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    return-object v0
.end method

.method public semGetActiveDlnaState()I
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNAState()I

    move-result v0

    return v0
.end method

.method public semGetDeviceStatus(I)Ljava/lang/Object;
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    .line 1876
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1877
    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/hardware/display/WifiDisplayStatus;)V

    return-object v0

    .line 1878
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1879
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDeviceStatus(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1882
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetLastConnectedDevice(I)Ljava/lang/Object;
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1842
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1843
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDevice(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    .line 1844
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_1

    .line 1845
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 1846
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1847
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDevice(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1850
    :cond_1
    return-object v2
.end method

.method public semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1706
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1707
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 1708
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 1710
    :cond_0
    return-object v2
.end method

.method public semGetLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    return-object v0
.end method

.method public semGetLastConnectedGCastDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedGoogleCastDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetLastConnectedGoogleCastDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetPresentationOwner(I)Ljava/lang/String;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 2030
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetScreenSharingStatus()I
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getScreenSharingStatus()I

    move-result v0

    return v0
.end method

.method public semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1688
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;
    .locals 2

    .prologue
    .line 1459
    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/hardware/display/WifiDisplayStatus;)V

    return-object v0
.end method

.method public semIsWifiDisplayEngineRunning()Z
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isWfdEngineRunning()Z

    move-result v0

    return v0
.end method

.method public semIsWifiDisplayVolumeControlSupported()Z
    .locals 3

    .prologue
    .line 1641
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const-string/jumbo v2, "suvo"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1642
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1643
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1646
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semPauseWifiDisplay()V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 1383
    return-void
.end method

.method public semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 1128
    return-void
.end method

.method public semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    .line 1197
    return-void
.end method

.method public semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1165
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    .line 1163
    return-void
.end method

.method public semRemoveLastConnectedDevice(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDevice(I)V

    .line 1860
    return-void
.end method

.method public semRemoveLastConnectedDlnaDevice()V
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDlnaDevice()V

    .line 1740
    return-void
.end method

.method public semRemoveLastConnectedGCastDevice()V
    .locals 0

    .prologue
    .line 1765
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedGoogleCastDevice()V

    .line 1764
    return-void
.end method

.method public semRemoveLastConnectedGoogleCastDevice()V
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedGCastDevice()V

    .line 1789
    return-void
.end method

.method public semRestartWifiDisplay()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->restartWifiDisplay()V

    .line 1441
    return-void
.end method

.method public semResumeWifiDisplay()V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 1392
    return-void
.end method

.method public semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p2, "state"    # I

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V

    .line 1983
    return-void
.end method

.method public semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V
    .locals 3
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .prologue
    .line 2000
    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "For Debugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActivityState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;->setActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 1998
    :cond_0
    return-void
.end method

.method public semSetExtendMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1930
    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetExtendMode flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setExtendMode(Z)V

    .line 1929
    return-void
.end method

.method public semSetScanningChannel(I)V
    .locals 1
    .param p1, "requestedChannel"    # I

    .prologue
    .line 1559
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScanningChannel(I)V

    .line 1557
    return-void
.end method

.method public semSetScreenSharingStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 1914
    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenSharingStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScreenSharingStatus(I)V

    .line 1913
    return-void
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isSet"    # Z

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public semSetWifiDisplayVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 1659
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const-string/jumbo v1, "svol"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    .line 1657
    return-void
.end method

.method public semSetWifiDisplayVolumeMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1673
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const-string/jumbo v1, "muvo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    .line 1671
    return-void
.end method

.method public semStartScanWifiDisplays()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->scanWifiDisplays()V

    .line 1226
    return-void
.end method

.method public semStopScanWifiDisplays()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopScanWifiDisplays()V

    .line 1239
    return-void
.end method

.method public semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 1145
    return-void
.end method

.method public semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    .line 1213
    return-void
.end method

.method public semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    .line 1178
    return-void
.end method

.method public startWifiDisplayScan()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    .line 913
    return-void
.end method

.method public stopWifiDisplayScan()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    .line 925
    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .prologue
    .line 898
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 897
    return-void
.end method
