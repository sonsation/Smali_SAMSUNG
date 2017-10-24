.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTile$Host$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private mComponentNameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDeskMode:Z

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHeader:Landroid/view/View;

.field private mHiddenTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKnoxBlockedQsTileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTileNameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/keyguard/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileComponentNameTable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotation"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p7, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p8, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p9, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p10, "flashlight"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p11, "userSwitcher"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p12, "userInfo"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p13, "keyguard"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p14, "security"    # Lcom/android/systemui/statusbar/policy/SecurityController;
    .param p15, "battery"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p16, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p17, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 231
    new-instance v3, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 176
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 177
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 178
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 179
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 180
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 181
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 182
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 183
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 184
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 185
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 186
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 187
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 188
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 189
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 190
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 191
    new-instance v3, Lcom/android/systemui/statusbar/policy/NightModeController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    .line 192
    new-instance v3, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 194
    new-instance v1, Landroid/os/HandlerThread;

    const-class v3, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 195
    const/16 v4, 0xa

    .line 194
    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 196
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 197
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 199
    new-instance v3, Lcom/android/systemui/qs/external/TileServices;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 201
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_qs_emergency_tiles"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 207
    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 210
    new-instance v2, Lcom/android/systemui/qs/SVoiceCommandReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/qs/SVoiceCommandReceiver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 214
    .local v2, "receiver":Lcom/android/systemui/qs/SVoiceCommandReceiver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    .line 215
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    .line 217
    const-string/jumbo v3, "QSTileHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QSTileHost : mKnoxBlockedQsTileList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileComponentNameTable()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->refreshTileList()V

    .line 226
    :cond_1
    new-instance v3, Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 173
    return-void

    .line 204
    .end local v2    # "receiver":Lcom/android/systemui/qs/SVoiceCommandReceiver;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_qs_tiles"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertDefaultCustomComponetToTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tileList"    # Ljava/lang/String;

    .prologue
    .line 947
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v3, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, ""

    .line 950
    .local v0, "convertedList":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileNameTable()V

    .line 952
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 953
    .local v1, "tile":Ljava/lang/String;
    move-object v2, v1

    .line 954
    .local v2, "tileName":Ljava/lang/String;
    const-string/jumbo v7, "custom("

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 955
    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 956
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 959
    :cond_0
    if-eqz v2, :cond_1

    .line 960
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "tile":Ljava/lang/String;
    .end local v2    # "tileName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 937
    const-string/jumbo v0, ""

    .line 938
    .local v0, "componentName":Ljava/lang/String;
    const-string/jumbo v1, "com.samsung.android.sm/.ui.booster.PerformanceTile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    const-string/jumbo v1, "Performance"

    return-object v1

    .line 942
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 911
    const-string/jumbo v0, ""

    .line 912
    .local v0, "customTileComponentName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SMART_MANAGER:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Performance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const-string/jumbo p1, "PerformanceCHN"

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "customTileComponentName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 917
    .restart local v0    # "customTileComponentName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "custom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 920
    :cond_1
    return-object v2
.end method

.method private getKnoxTileNameFromTileSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string/jumbo v0, "DND"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo p1, "DormantMode"

    .line 275
    :cond_0
    :goto_0
    return-object p1

    .line 268
    :cond_1
    const-string/jumbo v0, "AUTOROTATE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string/jumbo p1, "RotationLock"

    goto :goto_0

    .line 270
    :cond_2
    const-string/jumbo v0, "TORCHLIGHT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const-string/jumbo p1, "Flashlight"

    goto :goto_0

    .line 272
    :cond_3
    const-string/jumbo v0, "SOUNDMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo p1, "SilentMode"

    goto :goto_0
.end method

.method private getRecalculatedTileListForFota(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "oldList"    # Ljava/lang/String;
    .param p2, "newList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 981
    const-string/jumbo v7, "QSTileHost"

    const-string/jumbo v8, "getRecalculatedTileListForFota "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-nez p1, :cond_0

    .line 984
    return-object p2

    .line 986
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v4, "oldLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v3, "newLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, ""

    .line 989
    .local v5, "temp":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v2, v8, v7

    .line 990
    .local v2, "list":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 991
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 989
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 994
    .end local v2    # "list":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldLists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v2, v7, v6

    .line 997
    .restart local v2    # "list":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 996
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 999
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1001
    .end local v2    # "list":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newLists : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, "index":I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1007
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1008
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1009
    const-string/jumbo v7, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " add : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1013
    .end local v1    # "index":I
    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 1014
    const/4 v1, 0x0

    .line 1015
    .restart local v1    # "index":I
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1016
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1017
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1018
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1019
    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isNonDefaultCustomTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1020
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1023
    .end local v1    # "index":I
    :cond_9
    return-object v5
.end method

.method private isAvailableCustomTile(Ljava/lang/String;)Z
    .locals 7
    .param p1, "tileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 834
    const-string/jumbo v5, "Performance"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 835
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_f

    .line 836
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : PerformanceTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v4

    .line 839
    :cond_0
    const-string/jumbo v5, "Aod"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 840
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ALWAYS_ON_DISPLAY:Z

    if-nez v5, :cond_f

    .line 841
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : AodTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v4

    .line 844
    :cond_1
    const-string/jumbo v5, "PersonalMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 846
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    .line 845
    :goto_0
    if-nez v5, :cond_f

    .line 847
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : PersonalModeTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return v4

    :cond_2
    move v5, v4

    .line 846
    goto :goto_0

    .line 850
    :cond_3
    const-string/jumbo v5, "AllShareCast"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 851
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 852
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v1

    .line 853
    .local v1, "feature":I
    if-eq v1, v3, :cond_f

    .line 854
    if-eqz v1, :cond_f

    .line 855
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : AllShareCastTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v4

    .line 858
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "feature":I
    :cond_4
    const-string/jumbo v5, "Nfc"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 859
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 860
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isTablet()Z

    move-result v5

    .line 859
    if-eqz v5, :cond_f

    .line 861
    :cond_5
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : NfcTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return v4

    .line 864
    :cond_6
    const-string/jumbo v5, "DeviceVisibility"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 865
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 866
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-eqz v5, :cond_f

    .line 867
    :cond_7
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : DeviceVisibilityTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return v4

    .line 870
    :cond_8
    const-string/jumbo v5, "SecureFolder"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 871
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 872
    .local v2, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_a

    .line 873
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    return v3

    :cond_9
    move v3, v4

    goto :goto_1

    .line 875
    :cond_a
    return v4

    .line 879
    .end local v2    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_b
    const-string/jumbo v5, "com.android.settings/com.samsung.android.settings.qstile.BluelightFilterTiles"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 880
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : BluelightFilterTiles is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return v4

    .line 882
    :cond_c
    const-string/jumbo v5, "com.samsung.android.sm/.ui.booster.PerformanceTile"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 883
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : old PerformanceTile is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v4

    .line 885
    :cond_d
    const-string/jumbo v5, "com.android.settings/.accounts.SecAccountTiles"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 886
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : old SyncTile is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return v4

    .line 888
    :cond_e
    const-string/jumbo v5, "com.android.settings/com.samsung.android.settings.powersaving.PowerSavingTile"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 889
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : old PowerSavingTile is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return v4

    .line 893
    :cond_f
    return v3
.end method

.method private makeCustomTileComponentNameTable()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 897
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 898
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0f022d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "customTileComponentNameList":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    .line 901
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 902
    .local v5, "temp":Ljava/lang/String;
    const-string/jumbo v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 903
    .local v4, "seperatorIndex":I
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, "customTileName":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "componentName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "make table : customTileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", componentName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 896
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v2    # "customTileName":Ljava/lang/String;
    .end local v4    # "seperatorIndex":I
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeCustomTileNameTable()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 924
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 925
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0f022d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "customTileComponentNameList":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    .line 928
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 929
    .local v5, "temp":Ljava/lang/String;
    const-string/jumbo v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 930
    .local v4, "seperatorIndex":I
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "customTileName":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "componentName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v2    # "customTileName":Ljava/lang/String;
    .end local v4    # "seperatorIndex":I
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 525
    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 515
    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 514
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "setting":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 517
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    .line 522
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 521
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 513
    return-void
.end method

.method public animateToggleQSExpansion()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateToggleQSExpansion()V

    .line 333
    return-void
.end method

.method public changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tileName"    # Ljava/lang/String;

    .prologue
    .line 1027
    const-string/jumbo v0, "WIFIHOTSPOT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    const-string/jumbo p1, "Hotspot"

    .line 1045
    :cond_0
    :goto_0
    return-object p1

    .line 1029
    :cond_1
    const-string/jumbo v0, "AUTOROTATE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const-string/jumbo p1, "RotationLock"

    goto :goto_0

    .line 1031
    :cond_2
    const-string/jumbo v0, "SFINDER"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1032
    const-string/jumbo p1, "SFinder"

    goto :goto_0

    .line 1033
    :cond_3
    const-string/jumbo v0, "TORCHLIGHT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1034
    const-string/jumbo p1, "Flashlight"

    goto :goto_0

    .line 1035
    :cond_4
    const-string/jumbo v0, "SILENTMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SOUNDMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1036
    :cond_5
    const-string/jumbo p1, "SoundMode"

    goto :goto_0

    .line 1037
    :cond_6
    const-string/jumbo v0, "DND"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "DORMANTMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1038
    :cond_7
    const-string/jumbo p1, "Dnd"

    goto :goto_0

    .line 1039
    :cond_8
    const-string/jumbo v0, "WIFICALLING"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SPRWFC:Z

    if-eqz v0, :cond_9

    .line 1040
    const-string/jumbo p1, "WifiCallingSpr"

    goto/16 :goto_0

    .line 1041
    :cond_9
    const-string/jumbo v0, "RJILWIFICALLING"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_0

    .line 1042
    const-string/jumbo p1, "WifiCalling"

    goto/16 :goto_0
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "previousTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 539
    .local v8, "NP":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 540
    .local v7, "NA":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 541
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 542
    .local v11, "tileSpec":Ljava/lang/String;
    const-string/jumbo v1, "custom("

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 543
    :cond_1
    invoke-interface {p2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 545
    .local v9, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 546
    .local v5, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 547
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v4, Landroid/service/quicksettings/Tile;

    invoke-direct {v4}, Landroid/service/quicksettings/Tile;-><init>()V

    .line 548
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 546
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 549
    .local v0, "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 550
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 552
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    goto :goto_1

    .line 555
    .end local v0    # "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v11    # "tileSpec":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentTiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 557
    const-string/jumbo v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 556
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 537
    return-void
.end method

.method public collapsePanels()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    .line 338
    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 5
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 562
    const-string/jumbo v2, "intent("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    return-object v2

    .line 563
    :cond_0
    const-string/jumbo v2, "custom("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    return-object v2

    .line 564
    :cond_1
    const-string/jumbo v2, "work"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v2

    .line 567
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.systemui.qs.tiles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 569
    .local v1, "tempClass":Ljava/lang/Class;
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createTile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/qs/QSTile$Host;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 571
    .end local v1    # "tempClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    const/4 v2, 0x0

    return-object v2
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 291
    return-void
.end method

.method public dismissGridPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->dismiss()V

    .line 1108
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    .line 1105
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1151
    const-string/jumbo v0, "QsTileHost state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mHiddenTileSpecs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mKnoxBlockedQsTileList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getBottomBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBottomBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHiddenTileSpec()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    return-object v0
.end method

.method public getNightModeController()Lcom/android/systemui/statusbar/policy/NightModeController;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    return-object v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTopBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getTopBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public hasBarOnHeader()Z
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasBarOnHeader()Z

    move-result v0

    return v0
.end method

.method public isDefaultCustomTile(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 967
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 968
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0f022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "customTileComponentNameList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public isDeskMode()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeskMode:Z

    return v0
.end method

.method public isNonDefaultCustomTile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 974
    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 977
    :cond_1
    return v0
.end method

.method public isRemovedTileList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1138
    const-string/jumbo v4, "sysui_removed_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 1137
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "removedTileList":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1140
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 1141
    .local v1, "spec":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1142
    const/4 v2, 0x1

    return v2

    .line 1140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    .end local v1    # "spec":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method protected isSystemTile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tileName"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 825
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.systemui.qs.tiles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 830
    .local v1, "tempClass":Ljava/lang/Class;
    const/4 v2, 0x1

    return v2

    .line 826
    .end local v1    # "tempClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v2, 0x0

    return v2
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 722
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x7f0f022b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "defaultTileList":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isFotaUpdate(Landroid/content/Context;)Z

    move-result v2

    .line 725
    .local v2, "isFotaUpdate":Z
    if-eqz p2, :cond_0

    if-eqz v2, :cond_1

    .line 726
    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsFromCscFeature(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 727
    .local v6, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v6

    .line 729
    .end local v6    # "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loaded tile specs from setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v5, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 741
    .local v0, "addedDefault":Z
    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_6

    aget-object v4, v8, v7

    .line 742
    .local v4, "tile":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 741
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 744
    :cond_4
    const-string/jumbo v10, "default"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 745
    if-nez v0, :cond_3

    .line 746
    const-string/jumbo v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 747
    const/4 v0, 0x1

    goto :goto_1

    .line 750
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 753
    .end local v4    # "tile":Ljava/lang/String;
    :cond_6
    return-object v5
.end method

.method protected loadTileSpecsDex(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f022e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "dexTileList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 703
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0f022b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "defaultTileList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    .line 705
    const-string/jumbo v7, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    .line 704
    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "cscTileList":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v5, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v7, v6

    .line 709
    .local v4, "tile":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 710
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 711
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    .end local v4    # "tile":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method protected loadTileSpecsFromCscFeature(Ljava/lang/String;Z)Ljava/util/List;
    .locals 14
    .param p1, "tileList"    # Ljava/lang/String;
    .param p2, "isFotaUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v9, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 760
    .local v6, "res":Landroid/content/res/Resources;
    const v10, 0x7f0f022b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "defaultTileList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    .line 762
    const-string/jumbo v11, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    .line 761
    invoke-virtual {v10, v11, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "cscTileList":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 765
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v4

    .line 766
    .local v4, "privateCustomDeviceManager":Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 767
    const-string/jumbo v11, "sysui_removed_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 766
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, "removedTileList":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 769
    .local v8, "tileListForKnox":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->setKnoxCustomQSTileList(Ljava/lang/String;)Z

    .line 770
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setKnoxCustomQSTileList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v4    # "privateCustomDeviceManager":Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    .end local v5    # "removedTileList":Ljava/lang/String;
    .end local v8    # "tileListForKnox":Ljava/lang/String;
    :cond_0
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Loaded tile specs from csc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    const-string/jumbo v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 775
    const/4 v10, 0x0

    return-object v10

    .line 777
    :cond_2
    move-object v3, v0

    .line 779
    .local v3, "loadedTileList":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 780
    if-eqz p1, :cond_3

    .line 781
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->convertDefaultCustomComponetToTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 783
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getRecalculatedTileListForFota(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 786
    :cond_4
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadTileSpecsFromCscFeature : loadedTileList = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileComponentNameTable()V

    .line 791
    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_9

    aget-object v7, v11, v10

    .line 792
    .local v7, "tile":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 793
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isRemovedTileList(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 794
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_6
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 797
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 798
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "customSpec":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 800
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isRemovedTileList(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 801
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 803
    :cond_8
    if-eqz p2, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isNonDefaultCustomTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 804
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 815
    .end local v1    # "customSpec":Ljava/lang/String;
    .end local v7    # "tile":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sysui_qs_tiles"

    .line 816
    const-string/jumbo v12, ","

    invoke-static {v12, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 815
    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 818
    return-object v9
.end method

.method protected loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f022c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 677
    .local v6, "upsmTileList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 678
    .local v3, "res":Landroid/content/res/Resources;
    const v8, 0x7f0f022b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "defaultTileList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    .line 680
    const-string/jumbo v9, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    .line 679
    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "cscTileList":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v5, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "ultra_powersaving_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    .line 684
    .local v2, "isUPSM":Z
    :goto_0
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v8, v7

    .line 685
    .local v4, "tile":Ljava/lang/String;
    if-nez v2, :cond_2

    const-string/jumbo v10, "PowerSavingTile"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 684
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 682
    .end local v2    # "isUPSM":Z
    .end local v4    # "tile":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isUPSM":Z
    goto :goto_0

    .line 688
    .restart local v4    # "tile":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 689
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 690
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 693
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 696
    .end local v4    # "tile":Ljava/lang/String;
    :cond_4
    return-object v5
.end method

.method public onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1079
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    return v0
.end method

.method public onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z
    .locals 5
    .param p2, "isDetail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    const/4 v1, 0x0

    .line 1085
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSTileClickOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v1

    .line 1086
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 1087
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClickQSTileOnKeyguard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " detail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "QSTileHost"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeskModeChanged(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1065
    if-eqz p1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_dex_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 1069
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeskMode:Z

    .line 1064
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_emergency_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 1054
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string/jumbo v10, "sysui_qs_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "sysui_qs_emergency_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 442
    :cond_0
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "QSTileHost"

    const-string/jumbo v11, "Recreating tiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    const-string/jumbo v10, "sysui_qs_dex_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 451
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsDex(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 458
    .local v9, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 459
    .local v0, "currentUser":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    if-ne v0, v10, :cond_5

    return-void

    .line 439
    .end local v0    # "currentUser":I
    .end local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v10, "sysui_qs_dex_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 440
    return-void

    .line 452
    :cond_3
    const-string/jumbo v10, "sysui_qs_emergency_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 453
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .restart local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 455
    .end local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .restart local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 460
    .restart local v0    # "currentUser":I
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tile$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 461
    .local v5, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 462
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Destroying tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_7
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_1

    .line 466
    .end local v5    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    :cond_8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 467
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 468
    .local v7, "tileSpec":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile;

    .line 469
    .local v4, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v4, :cond_c

    instance-of v10, v4, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v10, :cond_a

    move-object v10, v4

    .line 470
    check-cast v10, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v10

    if-ne v10, v0, :cond_c

    .line 471
    :cond_a
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Adding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_b
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    .line 474
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 475
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 481
    :cond_c
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Creating tile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_d
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v4

    .line 484
    if-eqz v4, :cond_9

    .line 485
    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 487
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 490
    :catch_0
    move-exception v3

    .line 491
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 495
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v7    # "tileSpec":Ljava/lang/String;
    :cond_e
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    .line 496
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    .line 499
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_f

    .line 501
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 438
    :cond_f
    return-void
.end method

.method public openPanels()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateOpenPanels()V

    .line 343
    return-void
.end method

.method public refreshTileList()V
    .locals 14

    .prologue
    .line 608
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "QSTileHost"

    const-string/jumbo v12, "refreshTileList"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 610
    const-string/jumbo v12, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 609
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "setting":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 616
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 622
    .local v10, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 623
    .local v0, "currentUser":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "tile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 624
    .local v6, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 625
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string/jumbo v12, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Destroying tile: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_1

    .line 618
    .end local v0    # "currentUser":I
    .end local v6    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    .end local v7    # "tile$iterator":Ljava/util/Iterator;
    .end local v10    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .restart local v10    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 629
    .restart local v0    # "currentUser":I
    .restart local v7    # "tile$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 630
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 631
    .local v8, "tileSpec":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSTile;

    .line 632
    .local v5, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v5, :cond_8

    instance-of v11, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v11, :cond_6

    move-object v11, v5

    .line 633
    check-cast v11, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v11

    if-ne v11, v0, :cond_8

    .line 634
    :cond_6
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Adding "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_7
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 636
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    .line 637
    invoke-virtual {v2, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 640
    :cond_8
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Creating tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_9
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v5

    .line 643
    if-eqz v5, :cond_5

    .line 644
    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 646
    invoke-virtual {v2, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 649
    :catch_0
    move-exception v4

    .line 650
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error creating tile for spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 654
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v8    # "tileSpec":Ljava/lang/String;
    :cond_a
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    .line 655
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->clear()V

    .line 658
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 659
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_b

    .line 660
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 607
    :cond_b
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 532
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 533
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 531
    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 5
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    .local v0, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 510
    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 509
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 506
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHeader:Landroid/view/View;

    .line 283
    return-void
.end method

.method public setHiddenTileSpec(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "hiddenTileSpecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHidedTileSpec : hiddenTileSpecs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    .line 664
    return-void
.end method

.method public setQsExpansionHeight()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpansionHeight()V

    .line 1049
    return-void
.end method

.method public shouldBeHiddenByKnox(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 245
    return v3

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tileName$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "tileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldBeHiddenByKnox : tileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x1

    return v2

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKnoxTileNameFromTileSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 262
    .end local v0    # "tileName":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public showGridPopup()V
    .locals 2

    .prologue
    .line 1100
    new-instance v0, Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->show()V

    .line 1099
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 319
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 314
    return-void
.end method

.method public startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public updateRemovedTileList(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "tile"    # Ljava/lang/String;
    .param p2, "tileIsAdded"    # Z

    .prologue
    .line 1114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v2, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1116
    const-string/jumbo v4, "sysui_removed_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 1115
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "removedTileList":Ljava/lang/String;
    const-string/jumbo v3, "QSTileHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemovedTileList : tile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tileIsAdded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 1120
    .local v1, "spec":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1123
    .end local v1    # "spec":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 1124
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1125
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1132
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sysui_removed_qs_tiles"

    .line 1133
    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1132
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1113
    return-void

    .line 1128
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1129
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 329
    return-void
.end method
