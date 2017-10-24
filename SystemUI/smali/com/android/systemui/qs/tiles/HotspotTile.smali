.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$1;,
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLE_DIM:I = 0x0

.field private static final ENABLE_DIM:I = 0x1

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"


# instance fields
.field private final HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field private final mDisableNoAnimation:Lcom/android/systemui/qs/QSTile$Icon;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListening:Z

.field private final mUnavailable:Lcom/android/systemui/qs/QSTile$Icon;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 78
    const v1, 0x7f020182

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/qs/QSTile$Icon;

    .line 79
    const v1, 0x7f020184

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/qs/QSTile$Icon;

    .line 83
    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    .line 87
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    .line 86
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    .line 334
    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 104
    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    .line 112
    const-string/jumbo v2, "wifi"

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private isAirplaneModeEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03ea

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    return v3

    .line 432
    :cond_0
    return v2
.end method

.method private isBlockedByEASPolicy()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 329
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    .line 330
    .local v1, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 331
    .local v1, "result":Z
    :goto_0
    return v1

    .line 330
    .local v1, "result":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 7

    .prologue
    .line 438
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 439
    .local v2, "mgnr":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 440
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 441
    .local v1, "isP2PConnected":Z
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isP2PConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    return v1

    .line 443
    .end local v1    # "isP2PConnected":Z
    .end local v2    # "mgnr":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v4, 0x0

    return v4
.end method

.method private setHotspotEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleClick : showWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    .line 539
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 508
    return-void
.end method

.method private showNoSIMDialog()V
    .locals 5

    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v2, :cond_1

    const v1, 0x7f0f03e1

    .line 399
    .local v1, "nosimPopupTitleId":I
    :goto_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_CTC_POPUP:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0f03e4

    .line 405
    .local v0, "nosimPopupMsgId":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 407
    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const v4, 0x104000a

    .line 405
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 414
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 421
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 422
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 423
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 391
    return-void

    .line 397
    .end local v0    # "nosimPopupMsgId":I
    .end local v1    # "nosimPopupTitleId":I
    :cond_1
    const v1, 0x7f0f03e0

    .restart local v1    # "nosimPopupTitleId":I
    goto :goto_0

    .line 400
    :cond_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v2, :cond_3

    const v0, 0x7f0f03e3

    .restart local v0    # "nosimPopupMsgId":I
    goto :goto_1

    .line 401
    .end local v0    # "nosimPopupMsgId":I
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v2, :cond_4

    const v0, 0x7f0f03e2

    .restart local v0    # "nosimPopupMsgId":I
    goto :goto_1

    .line 402
    .end local v0    # "nosimPopupMsgId":I
    :cond_4
    const v0, 0x7f0f03df

    .restart local v0    # "nosimPopupMsgId":I
    goto :goto_1
.end method

.method private showWarningDialog(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showWarningDialog(): mAlertDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 458
    :cond_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_CHINA_POPUP:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0f050e

    .line 467
    .local v0, "popupMsgId":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 469
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_CHINA_POPUP:Z

    if-eqz v1, :cond_5

    const v0, 0x7f0f03e8

    .line 476
    :cond_1
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 477
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$5;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    const v3, 0x104000a

    .line 476
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 484
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const/high16 v3, 0x1040000

    .line 476
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 489
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 476
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 495
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 502
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 452
    return-void

    .line 459
    .end local v0    # "popupMsgId":I
    :cond_2
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_3

    const v0, 0x7f0f050f

    .restart local v0    # "popupMsgId":I
    goto :goto_0

    .line 460
    .end local v0    # "popupMsgId":I
    :cond_3
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v1, :cond_4

    const v0, 0x7f0f050d

    .restart local v0    # "popupMsgId":I
    goto :goto_0

    .line 461
    .end local v0    # "popupMsgId":I
    :cond_4
    const v0, 0x7f0f050c

    .restart local v0    # "popupMsgId":I
    goto :goto_0

    .line 470
    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v1, :cond_6

    const v0, 0x7f0f03e6

    goto :goto_1

    .line 471
    :cond_6
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TMB_POPUP:Z

    if-eqz v1, :cond_7

    const v0, 0x7f0f03e7

    goto :goto_1

    .line 472
    :cond_7
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_SPR_POPUP:Z

    if-eqz v1, :cond_8

    const v0, 0x7f0f03e9

    goto :goto_1

    .line 473
    :cond_8
    const v0, 0x7f0f03e5

    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0330

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f032f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    .line 167
    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    .line 167
    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const v0, 0x7f0f03eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast(I)V

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f03bf

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_SPR_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f03c0

    goto :goto_0

    :cond_1
    const v0, 0x7f0f03be

    goto :goto_0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v1

    .line 184
    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v1

    .line 184
    if-eqz v1, :cond_2

    .line 187
    :cond_1
    const v1, 0x7f0f03eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast(I)V

    .line 188
    return-void

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 193
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    .line 195
    return-void

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->dim:Z

    if-eqz v1, :cond_5

    return-void

    .line 208
    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_7

    .line 215
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 217
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    .line 178
    return-void

    .line 209
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send WIFIAP_ENABLE_WARNING for USA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    :cond_8
    move v1, v2

    .line 217
    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    .line 227
    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    .line 227
    if-eqz v0, :cond_2

    .line 230
    :cond_1
    const v0, 0x7f0f03eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast(I)V

    .line 231
    return-void

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 236
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    .line 238
    return-void

    .line 240
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDetail(Z)V

    .line 221
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f03bf

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 263
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020401

    :goto_1
    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 266
    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/String;)V

    .line 268
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 269
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUpdateState : int = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->dim:Z

    .line 271
    return-void

    .line 262
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_SPR_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f03c0

    goto :goto_0

    :cond_1
    const v0, 0x7f0f03be

    goto :goto_0

    .line 264
    :cond_2
    const v0, 0x7f02041b

    goto :goto_1

    .end local p2    # "arg":Ljava/lang/Object;
    :cond_3
    move v0, v2

    .line 270
    goto :goto_2

    .line 273
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 274
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 276
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->dim:Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUpdateState : boolean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_3
    return-void

    .line 280
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 144
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method
