.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/MobileDataTile$1;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$2;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$3;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
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
.field static final DATA_SETTINGS:Landroid/content/Intent;

.field static final DATA_SETTINGS_UPSM:Landroid/content/Intent;

.field static final LGT_ROAMING_SETTINGS:Landroid/content/Intent;

.field private static final MSGID_NO_SIM:I = 0x1

.field private static final MSGID_NULL:I

.field static final ROAMING_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataCalback:Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mIsVoLteCall:Z

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 65
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 64
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->ROAMING_SETTINGS:Landroid/content/Intent;

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->LGT_ROAMING_SETTINGS:Landroid/content/Intent;

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 79
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataCalback:Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;

    .line 407
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 490
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 88
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "mobile_data"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 96
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 102
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 105
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v1, :cond_0

    .line 113
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    .line 112
    if-eqz v1, :cond_1

    .line 114
    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    .line 116
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 86
    return-void
.end method

.method private isDataRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNetworkRoaming()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 425
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v2, :cond_0

    .line 426
    return v3

    .line 428
    :cond_0
    const-string/jumbo v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "currentPlmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 430
    :cond_1
    return v3

    .line 432
    :cond_2
    const-string/jumbo v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 433
    .local v1, "ret":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 434
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNetworkRoaming :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " currentplmn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 435
    const-string/jumbo v4, " oversea = "

    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 435
    const-string/jumbo v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_3
    return v1

    .line 432
    .end local v1    # "ret":Z
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "event":I
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_1

    .line 512
    const/16 v0, 0x801

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 504
    .end local v0    # "event":I
    :cond_2
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-eqz p1, :cond_2

    .line 454
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_KOR_OPEN_POPUP:Z

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0414

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0415

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 466
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$16;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$16;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 457
    const v3, 0x104000a

    .line 465
    const/high16 v5, 0x1040000

    move-object v0, p0

    .line 455
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send intent SKT_ROAMING_DATA_POPUP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v0, :cond_0

    .line 482
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "ENABLED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f041c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    move v0, v1

    .line 479
    goto :goto_1
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
    .line 383
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 391
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    :cond_1
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 393
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 397
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$14;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 403
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 518
    :cond_0
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-object v0

    .line 173
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->LGT_ROAMING_SETTINGS:Landroid/content/Intent;

    return-object v0

    .line 177
    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->ROAMING_SETTINGS:Landroid/content/Intent;

    return-object v0

    .line 179
    :cond_3
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0x73

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 9

    .prologue
    const v3, 0x104000a

    const v6, 0x7f0f040c

    const/high16 v8, 0x1040000

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    .line 218
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    return-void

    .line 224
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 224
    if-eqz v0, :cond_2

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    .line 224
    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0416

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03f4

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick : state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " currDataEnabled "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_4

    .line 238
    return-void

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03f3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 252
    const/4 v6, 0x0

    move-object v0, p0

    .line 242
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 214
    :goto_0
    return-void

    .line 253
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v0, :cond_b

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto :goto_0

    :cond_6
    move v5, v1

    goto :goto_1

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v0, :cond_8

    const v7, 0x7f0f0411

    .line 260
    .local v7, "messageId":I
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 271
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 262
    const v3, 0x7f0f03db

    move-object v0, p0

    move v5, v8

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 259
    .end local v7    # "messageId":I
    :cond_8
    const v7, 0x7f0f0410

    .restart local v7    # "messageId":I
    goto :goto_2

    .line 278
    .end local v7    # "messageId":I
    :cond_9
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v0, :cond_a

    const v7, 0x7f0f0413

    .line 280
    .restart local v7    # "messageId":I
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$10;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 291
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$11;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    move-object v0, p0

    move v5, v8

    .line 280
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 279
    .end local v7    # "messageId":I
    :cond_a
    const v7, 0x7f0f0412

    .restart local v7    # "messageId":I
    goto :goto_3

    .line 299
    .end local v7    # "messageId":I
    :cond_b
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_OFF_POPUP:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 300
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v7, 0x7f0f040f

    .line 303
    .restart local v7    # "messageId":I
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$12;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 314
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$13;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$13;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 305
    const v3, 0x7f0f03db

    move-object v0, p0

    move v5, v8

    .line 303
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 301
    .end local v7    # "messageId":I
    :cond_c
    const v7, 0x7f0f040e

    .restart local v7    # "messageId":I
    goto :goto_4

    .line 302
    .end local v7    # "messageId":I
    :cond_d
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_ATT_POPUP:Z

    if-eqz v0, :cond_e

    const v7, 0x7f0f041b

    .restart local v7    # "messageId":I
    goto :goto_4

    .end local v7    # "messageId":I
    :cond_e
    const v7, 0x7f0f040d

    .restart local v7    # "messageId":I
    goto :goto_4

    .line 321
    .end local v7    # "messageId":I
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_10

    :goto_5
    invoke-virtual {v2, v5}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    move v5, v1

    goto :goto_5
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v0, :cond_0

    .line 144
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    .line 143
    if-eqz v0, :cond_1

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    .line 146
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 140
    return-void
.end method

.method protected handleLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleLongClick()V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03f4

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03f3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 197
    const v3, 0x104000a

    .line 205
    const/4 v6, 0x0

    move-object v0, p0

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 206
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showDetail(Z)V

    .line 189
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 349
    .local v0, "r":Landroid/content/res/Resources;
    const v3, 0x7f02037d

    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    const v1, 0x7f0f03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 358
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_0

    .line 359
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 347
    :cond_0
    return-void

    .line 354
    :cond_1
    const v3, 0x7f0f03c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 355
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eq v3, v1, :cond_2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    .line 157
    if-eqz p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataCalback:Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 154
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataCalback:Lcom/android/systemui/qs/tiles/MobileDataTile$DataCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method
