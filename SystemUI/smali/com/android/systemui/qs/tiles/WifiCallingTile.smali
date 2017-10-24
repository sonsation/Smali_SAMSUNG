.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$1;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$2;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$3;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$4;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final APN_ALREADY_ACTIVE:I = 0x0

.field private static final EVENT_REQUEST_NETWORK:I = 0x65

.field private static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field private static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final LONG_KEYPRESS:I = 0x2

.field private static final SHORT_KEYPRESS:I = 0x1

.field public static final VOWIFI_MENU_ENABLE:Ljava/lang/String; = "vowifi_menu_enable"

.field public static final WFC_SHOW_NEVER_AGAIN:Ljava/lang/String; = "wfc_dialog_show_never_again"

.field private static final WIFICALLING_SETTINGS:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;


# instance fields
.field private mActProcessATT:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mInCall:Z

.field private mInWifiCall:Z

.field private mIsWifiCallingMenuEnabled:Z

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimProvisioned:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mWifiConnected:Z

.field private final mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 74
    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.callsettings.WifiCallActivity"

    .line 73
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 77
    const-string/jumbo v2, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v3, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    .line 76
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 80
    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.CallFeaturesSetting"

    .line 79
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 9
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 94
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    .line 110
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    .line 120
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    .line 559
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 595
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object v3, p1

    .line 162
    check-cast v3, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 165
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 169
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 170
    const-string/jumbo v6, "vowifi_menu_enable"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 169
    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 173
    const-string/jumbo v6, "vowifi_menu_enable"

    .line 172
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    .line 176
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v3, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_0

    .line 182
    const-string/jumbo v3, "action_wifi_qs_refresh_att"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v3, "action_wifi_qs_setdim_att"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    :cond_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v3, :cond_1

    .line 187
    const-string/jumbo v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 192
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 193
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 197
    :cond_2
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_3

    .line 198
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x800

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 201
    :cond_3
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v3, :cond_5

    .line 202
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 204
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "IMSI_key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_calling_rogers_imsi"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "IMSI_Vaue_DB":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 160
    .end local v0    # "IMSI_Vaue_DB":Ljava/lang/String;
    .end local v1    # "IMSI_key":Ljava/lang/String;
    :cond_5
    return-void

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_6
    move v3, v5

    .line 172
    goto/16 :goto_0

    .line 207
    .restart local v0    # "IMSI_Vaue_DB":Ljava/lang/String;
    .restart local v1    # "IMSI_key":Ljava/lang/String;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_7
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    goto :goto_1
.end method

.method private getATTVoWifiIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "keyPressType"    # I

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Launch provisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 587
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.intent.action.ACTIVATE_WIFI_CALLING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v2, "qs"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.nsdsvowifi"

    const-string/jumbo v3, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 591
    return-object v1
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 288
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 291
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isWfcEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 437
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v4, :cond_1

    .line 438
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 439
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 441
    .end local v0    # "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 444
    .local v1, "wfcEnabled":I
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v4, :cond_3

    .line 445
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    if-eqz v4, :cond_2

    if-ne v1, v2, :cond_2

    move v3, v2

    :cond_2
    return v3

    .line 448
    :cond_3
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v4, :cond_5

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isEnhanced4gLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v1, v2, :cond_4

    move v3, v2

    :cond_4
    return v3

    .line 452
    :cond_5
    if-ne v1, v2, :cond_6

    :goto_1
    return v2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private setMode(Z)V
    .locals 8
    .param p1, "mode"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 457
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set mode TMO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 460
    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .line 459
    :goto_0
    invoke-static {v4, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 456
    :cond_0
    :goto_1
    return-void

    .line 461
    :cond_1
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0

    .line 462
    :cond_2
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_3

    .line 463
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 465
    .local v1, "wfcIntentATT":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 470
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "wfcIntentATT":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    .line 471
    const-string/jumbo v7, "wifi_call_enable"

    .line 472
    if-eqz p1, :cond_4

    move v3, v4

    .line 470
    :goto_2
    invoke-static {v6, v7, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 473
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v3, :cond_0

    .line 474
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, "wificall":Landroid/content/Intent;
    const-string/jumbo v3, "wifi_call_enable"

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v2    # "wificall":Landroid/content/Intent;
    :cond_4
    move v3, v5

    .line 472
    goto :goto_2

    .restart local v2    # "wificall":Landroid/content/Intent;
    :cond_5
    move v4, v5

    .line 475
    goto :goto_3
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "posButton"    # I
    .param p4, "posListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negButton"    # I
    .param p6, "negListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    return-void

    .line 538
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 540
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 544
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 545
    :cond_2
    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 546
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 550
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiCallingTile$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$10;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 532
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    return-object v3

    .line 385
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    if-eqz v0, :cond_2

    .line 390
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_3

    .line 391
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    return-object v0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLongClickIntent() mIsWifiCallingMenuEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v3

    .line 392
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_4

    .line 393
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 394
    :cond_4
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_5

    .line 395
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    return-object v0

    .line 397
    :cond_5
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 11

    .prologue
    const v3, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    invoke-static {v4, v6, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 303
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleClick : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " WifiCallingMenuEnabled "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mSimProvisioned  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " mWifiConnected "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiCallingTileBlocked()Z

    move-result v0

    .line 305
    if-eqz v0, :cond_2

    .line 307
    return-void

    :cond_0
    move v0, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_3

    .line 311
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLocationMenuNeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    :cond_4
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    if-eqz v0, :cond_8

    .line 345
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    if-eqz v0, :cond_a

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_c

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    .line 300
    :goto_3
    return-void

    .line 313
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-nez v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0406

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v4, Lcom/android/systemui/qs/tiles/WifiCallingTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$5;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    .line 324
    new-instance v6, Lcom/android/systemui/qs/tiles/WifiCallingTile$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$6;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    move-object v0, p0

    .line 314
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0460

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0462

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    new-instance v10, Lcom/android/systemui/qs/tiles/WifiCallingTile$7;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$7;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    move-object v4, p0

    move-object v8, v1

    move v9, v3

    .line 333
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 345
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0460

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0461

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    new-instance v4, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    .line 369
    new-instance v6, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    .line 350
    const v3, 0x7f0f0463

    move-object v0, p0

    .line 347
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    move v7, v2

    .line 376
    goto/16 :goto_2
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 228
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 232
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 219
    :cond_2
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showDetail(Z)V

    .line 402
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 418
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TMB_ICON:Z

    if-eqz v0, :cond_0

    .line 419
    const v0, 0x7f0203fb

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 415
    return-void

    .line 420
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_MTR_ICON:Z

    if-eqz v0, :cond_1

    .line 421
    const v0, 0x7f02039f

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 422
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v0, :cond_2

    .line 423
    const v0, 0x7f020402

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 425
    :cond_2
    const v0, 0x7f020403

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 427
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 258
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    return v5

    .line 260
    :cond_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v3, :cond_1

    .line 261
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v3

    return v3

    .line 263
    :cond_1
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_3

    .line 264
    :cond_2
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "salesCode":Ljava/lang/String;
    const-string/jumbo v3, "ro.csc.omcnw_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "omcNwCode":Ljava/lang/String;
    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    .end local v1    # "omcNwCode":Ljava/lang/String;
    .end local v2    # "salesCode":Ljava/lang/String;
    :cond_3
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_WFC_REFRESH_BY_SIM:Z

    if-eqz v3, :cond_7

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "numeric":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_SER_POPUP:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    const-string/jumbo v3, "25001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    return v6

    .line 267
    .end local v0    # "numeric":Ljava/lang/String;
    .restart local v1    # "omcNwCode":Ljava/lang/String;
    .restart local v2    # "salesCode":Ljava/lang/String;
    :cond_4
    return v5

    .line 277
    .end local v1    # "omcNwCode":Ljava/lang/String;
    .end local v2    # "salesCode":Ljava/lang/String;
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_5
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_XSA_POPUP:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    const-string/jumbo v3, "50502"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 278
    return v6

    .line 280
    :cond_6
    return v5

    .line 283
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_WIFICALLING:Z

    return v3
.end method

.method public isEnhanced4gLTEEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voicecall_type"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 240
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    .line 243
    if-eqz p1, :cond_2

    .line 244
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 249
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public supportWFCStateUpdate()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 497
    const-string/jumbo v3, "vowifi_menu_enable"

    .line 496
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    .line 498
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_3

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    if-eqz v0, :cond_1

    .line 500
    return v2

    :cond_0
    move v0, v2

    .line 496
    goto :goto_0

    .line 503
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1

    .line 506
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    if-eqz v0, :cond_4

    .line 507
    return v2

    .line 510
    :cond_4
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_5

    .line 511
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v0

    return v0

    .line 514
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_6

    .line 515
    return v1

    .line 517
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    if-eqz v0, :cond_7

    .line 518
    return v1

    .line 520
    :cond_7
    return v2
.end method
