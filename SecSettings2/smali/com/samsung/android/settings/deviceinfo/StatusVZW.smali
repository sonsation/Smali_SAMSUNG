.class public Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private bShowImsStatus:Z

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    return v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return p1
.end method

.method static synthetic -set1([B)[B
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOemData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)V
    .locals 0
    .param p1, "selectSim"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    const-string/jumbo v1, "data_state"

    aput-object v1, v0, v3

    .line 203
    const-string/jumbo v1, "service_state"

    aput-object v1, v0, v4

    .line 204
    const-string/jumbo v1, "operator_name"

    aput-object v1, v0, v5

    .line 205
    const-string/jumbo v1, "roaming_state"

    aput-object v1, v0, v6

    .line 206
    const-string/jumbo v1, "user_name"

    aput-object v1, v0, v7

    .line 207
    const-string/jumbo v1, "network_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "latest_area_info"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "imei"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "imei_sv"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "prl_version"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "eri_version"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "min_number"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "meid_number"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "signal_strength"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "icc_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "sid_number"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "nid_number"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 201
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 233
    new-array v0, v7, [Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    .line 235
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v1, v0, v4

    .line 236
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    .line 237
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    .line 233
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 185
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "00000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "0000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "00000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "000000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    .line 194
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    .line 197
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 278
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    .line 293
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 295
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    .line 297
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    .line 341
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 427
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    .line 550
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 1550
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1605
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    .line 1884
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 145
    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0b0530

    const/4 v8, -0x1

    .line 1501
    const-string/jumbo v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1502
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 1503
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1504
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1506
    .local v4, "ut":J
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_0

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 1507
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, "status":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1500
    return-void

    .line 1509
    .local v3, "status":Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1510
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0

    .line 1511
    .local v3, "status":Ljava/lang/String;
    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_2

    .line 1512
    const v6, 0x7f0b0532

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0

    .line 1514
    .local v3, "status":Ljava/lang/String;
    :cond_2
    const v6, 0x7f0b052f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 4

    .prologue
    .line 1877
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1879
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1880
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1876
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 1542
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 1543
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1544
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 1546
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1949
    .local v1, "convertedStr":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1950
    .local v0, "charArray":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1952
    .local v3, "strLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    .line 1953
    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1954
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    .line 1955
    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1958
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "devID"    # Ljava/lang/String;

    .prologue
    .line 1636
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1637
    .local v0, "len":I
    const/4 v1, 0x0

    .line 1640
    .local v1, "out":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1641
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1646
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object v1

    .line 1642
    .restart local v1    # "out":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1643
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "out":Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "esnno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 1656
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1658
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1660
    .local v0, "decESN":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1669
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1694
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1662
    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1665
    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1673
    :pswitch_2
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1676
    :pswitch_3
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1679
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1682
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1685
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1688
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1691
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1671
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "meidno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 1704
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1706
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1708
    .local v0, "decMEID":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1738
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1763
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1710
    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1713
    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1716
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1719
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1722
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1725
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1728
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1731
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1734
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1742
    :pswitch_9
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1745
    :pswitch_a
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1748
    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1751
    :pswitch_c
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1754
    :pswitch_d
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1757
    :pswitch_e
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1760
    :pswitch_f
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1740
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1936
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1937
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "XAR"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    .line 1939
    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1943
    :cond_1
    :goto_0
    return-object v0

    .line 1940
    :cond_2
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1941
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1926
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1927
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "iccId":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1929
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    :cond_0
    return-object v0
.end method

.method private getMeidNumber(I)Ljava/lang/String;
    .locals 7
    .param p1, "selectSim"    # I

    .prologue
    .line 1152
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, p1

    .line 1153
    .local v3, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 1154
    .local v2, "meidNumber":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 1155
    const-string/jumbo v5, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    .line 1154
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1156
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "devId":Ljava/lang/String;
    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMeidNumber() => devId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    if-nez v0, :cond_1

    .line 1159
    const-string/jumbo v2, ""

    .line 1170
    .end local v0    # "devId":Ljava/lang/String;
    .end local v2    # "meidNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1161
    .restart local v0    # "devId":Ljava/lang/String;
    .restart local v2    # "meidNumber":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1162
    .local v1, "meid":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Dec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nHex:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, "meidNumber":Ljava/lang/String;
    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "KEY_MEID_NUMBER() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1167
    .end local v0    # "devId":Ljava/lang/String;
    .end local v1    # "meid":Ljava/lang/StringBuilder;
    .local v2, "meidNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    .line 1168
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    .local v2, "meidNumber":Ljava/lang/String;
    goto :goto_0

    .line 1167
    .local v2, "meidNumber":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private getOemData()V
    .locals 6

    .prologue
    .line 473
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 474
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 478
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 479
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 480
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 481
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 487
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 486
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 487
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    :goto_1
    return-void

    .line 488
    :catch_2
    move-exception v2

    .line 489
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 484
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 486
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 487
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 484
    :goto_2
    throw v3

    .line 488
    :catch_3
    move-exception v2

    .line 489
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1175
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1176
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "opName":Ljava/lang/String;
    const-string/jumbo v2, "DCM"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :cond_0
    :goto_0
    return-object v0

    .line 1179
    :cond_1
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1180
    const-string/jumbo v0, "au"

    goto :goto_0

    .line 1181
    :cond_2
    const-string/jumbo v2, "TGY"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    :cond_3
    const-string/jumbo v2, "China Telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1184
    :cond_4
    const-string/jumbo v2, "CU GSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "CHN-CUGSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1185
    const-string/jumbo v2, "China Unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1184
    if-nez v2, :cond_5

    .line 1185
    const-string/jumbo v2, "CHN-UNICOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1184
    if-eqz v2, :cond_6

    .line 1186
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0536

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1187
    :cond_6
    const-string/jumbo v2, "CMCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CHINA MOBILE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1188
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0537

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1189
    :cond_8
    const-string/jumbo v2, "PCCW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "PCCW-HKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0538

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 370
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;

    invoke-direct {v0, p0, p1, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;II)V

    .line 396
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1134
    packed-switch p1, :pswitch_data_0

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0fc6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1136
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0fb9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1140
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0fba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1143
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0fbc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1898
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1900
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_1

    .line 1905
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1912
    return v1

    .line 1907
    :pswitch_0
    return v2

    .line 1910
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1915
    :cond_1
    return v2

    .line 1905
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 495
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 496
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 497
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 498
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 494
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1534
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1535
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerForWfcRegistrationStatus(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 1591
    const-string/jumbo v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForWfcRegistrationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1104
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1102
    :cond_0
    return-void
.end method

.method private requestFocusFromBixby(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V

    .line 621
    const-wide/16 v2, 0x3e8

    .line 614
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 1480
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1481
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 1482
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1483
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1479
    :cond_1
    return-void

    .line 1482
    :cond_2
    const/4 v0, 0x0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1468
    :goto_0
    return-void

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 447
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 452
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 453
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 454
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 455
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    if-eqz v1, :cond_0

    .line 461
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 445
    return-void

    .line 463
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 457
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    if-eqz v1, :cond_0

    .line 461
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 463
    :catch_2
    move-exception v2

    .line 464
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 460
    if-eqz v1, :cond_1

    .line 461
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 458
    :cond_1
    :goto_1
    throw v4

    .line 463
    :catch_3
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Status"

    const-string/jumbo v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1123
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 1496
    const-string/jumbo v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1497
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0b0532

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1495
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 1428
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1429
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1430
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1427
    return-void

    .line 1429
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1422
    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1420
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 1316
    if-eqz p1, :cond_0

    .line 1317
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    const v5, 0x7f0b0fc4

    .line 1263
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1264
    .local v2, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v1

    .line 1266
    .local v1, "state":I
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0fc6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1283
    :goto_0
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1284
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1287
    :cond_0
    const-string/jumbo v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void

    .line 1270
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1273
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0fc5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1276
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0fc3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1279
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0fc2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1197
    iget v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1198
    .local v3, "subId":[I
    aget v5, v3, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1199
    .local v1, "phoneId":I
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    const-string/jumbo v5, "gsm.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, "networkType":Ljava/lang/String;
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1204
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    .line 1205
    const-string/jumbo v5, "gsm.voice.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1204
    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1207
    .local v4, "voiceNetworkType":Ljava/lang/String;
    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1211
    :cond_0
    :goto_0
    const-string/jumbo v5, "CDMA-IS95A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "CDMA-IS95B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1212
    :cond_1
    const-string/jumbo v0, "CDMA 1x"

    .line 1254
    .end local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1259
    :cond_3
    const-string/jumbo v5, "network_type"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    return-void

    .line 1208
    .restart local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_4
    move-object v0, v4

    .line 1209
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_5
    const-string/jumbo v5, "EvDo-rev.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1214
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1215
    :cond_6
    const-string/jumbo v5, "EvDo-rev.A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1216
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1217
    :cond_7
    const-string/jumbo v5, "EvDo-rev.B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1218
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1219
    :cond_8
    const-string/jumbo v5, "1xRTT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1220
    const-string/jumbo v0, "CDMA 1x"

    goto :goto_1

    .line 1221
    :cond_9
    const-string/jumbo v5, "UMTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1222
    const-string/jumbo v0, "WCDMA"

    goto/16 :goto_1

    .line 1223
    :cond_a
    const-string/jumbo v5, "HSDPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSUPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1224
    :cond_b
    const-string/jumbo v0, "HSPA"

    goto/16 :goto_1

    .line 1225
    :cond_c
    const-string/jumbo v5, "HSPAP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1226
    const-string/jumbo v0, "HSPA+"

    goto/16 :goto_1

    .line 1227
    :cond_d
    const-string/jumbo v5, "eHRPD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1228
    const-string/jumbo v0, "eHRPD"

    goto/16 :goto_1

    .line 1229
    :cond_e
    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1230
    const-string/jumbo v0, "LTE"

    goto/16 :goto_1

    .line 1231
    :cond_f
    const-string/jumbo v5, "GPRS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "EDGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "GSM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1232
    const-string/jumbo v5, "TD-SCDMA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1233
    const-string/jumbo v0, "TD-SCDMA"

    goto/16 :goto_1

    .line 1235
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    goto/16 :goto_1

    .line 1238
    .end local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1243
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v2

    .line 1245
    .local v2, "state":I
    const-string/jumbo v5, "false"

    const-string/jumbo v6, "ro.ril.svlte1x"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1246
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 1247
    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1245
    if-eqz v5, :cond_2

    .line 1248
    const-string/jumbo v0, "1x RTT"

    goto/16 :goto_1

    .line 1250
    .end local v2    # "state":I
    :cond_12
    const-string/jumbo v5, "OMN"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "O2U"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "XEC"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1251
    :cond_13
    const-string/jumbo v5, "LTE"

    const-string/jumbo v6, "4G"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v5, 0x7f0b0fbe

    const v4, 0x7f0b0fbd

    .line 1291
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1292
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "display":Ljava/lang/String;
    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1297
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    :goto_0
    const-string/jumbo v2, "operator_name"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return-void

    .line 1301
    :cond_1
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1306
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_3
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStatus(I)V
    .locals 25
    .param p1, "selectSim"    # I

    .prologue
    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 765
    .local v4, "activity":Landroid/app/Activity;
    const/16 v17, 0x0

    .line 766
    .local v17, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    .line 768
    .local v11, "manager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 769
    :cond_0
    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    aget-object v8, v23, v22

    .line 770
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 769
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 773
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    aget-object v17, v22, p1

    .line 774
    .local v17, "selectPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    aget-object v11, v22, p1

    .line 778
    .local v11, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 780
    :cond_2
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 781
    :cond_3
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 791
    :goto_1
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 796
    :cond_4
    :goto_2
    const-string/jumbo v22, "min_number"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0027

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 799
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const v23, 0x7f0b130e

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(I)V

    .line 801
    :cond_5
    const-string/jumbo v22, "prl_version"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string/jumbo v22, "imei"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIMEI(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string/jumbo v22, "TFN"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 805
    :cond_6
    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 811
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 815
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_8

    .line 816
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 819
    :cond_8
    const-string/jumbo v22, "icc_id"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIccId(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 828
    .local v5, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_9

    .line 829
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v20

    .line 830
    .local v20, "sid":I
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v13

    .line 831
    .local v13, "nid":I
    const-string/jumbo v23, "sid_number"

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string/jumbo v23, "nid_number"

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v13    # "nid":I
    .end local v20    # "sid":I
    :cond_9
    :goto_7
    const-string/jumbo v22, "SPR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->connectToRilService()V

    .line 860
    :goto_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 861
    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 862
    .local v9, "mIMEI":Landroid/preference/Preference;
    if-eqz v9, :cond_a

    .line 863
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 864
    new-instance v22, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 890
    .end local v9    # "mIMEI":Landroid/preference/Preference;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 892
    const/16 v21, 0x0

    .local v21, "simSlotNum":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v23

    aput-object v23, v22, v21

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    aget-object v22, v22, v21

    .line 895
    const/16 v23, 0x141

    .line 894
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 892
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 783
    .end local v21    # "simSlotNum":I
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v12

    .line 784
    .local v12, "meidNumber":Ljava/lang/String;
    if-nez v12, :cond_c

    .line 785
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 787
    :cond_c
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 792
    .end local v12    # "meidNumber":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 793
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 807
    :cond_e
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 817
    :cond_f
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 815
    if-nez v22, :cond_8

    .line 823
    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 831
    .restart local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v13    # "nid":I
    .restart local v20    # "sid":I
    :cond_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 832
    :cond_11
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    .line 835
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v13    # "nid":I
    .end local v20    # "sid":I
    :cond_12
    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 836
    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 842
    :cond_13
    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 845
    :cond_14
    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 851
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 852
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 856
    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 901
    .restart local v21    # "simSlotNum":I
    :cond_15
    const-string/jumbo v22, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 902
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    .line 904
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 905
    const-string/jumbo v22, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 912
    .end local v11    # "manager":Landroid/telephony/TelephonyManager;
    .end local v17    # "selectPhone":Lcom/android/internal/telephony/Phone;
    .end local v21    # "simSlotNum":I
    :cond_17
    const-string/jumbo v22, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSysScopeStatus()V

    .line 919
    const-string/jumbo v22, "ril.serialnumber"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, "mRilSerial":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string/jumbo v22, "00000000000"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    :cond_18
    const-string/jumbo v18, "ro.serialno"

    .line 921
    .local v18, "serial":Ljava/lang/String;
    :goto_a
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 922
    .local v19, "serialNum":Ljava/lang/String;
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serial:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "KDI"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    .line 926
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "USC"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "MTR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "LRA"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "ACG"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 925
    if-eqz v22, :cond_1f

    .line 927
    :cond_19
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 933
    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 934
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v22

    const-string/jumbo v23, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 935
    .local v14, "ratedValue":Ljava/lang/String;
    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 936
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 937
    const-string/jumbo v22, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 939
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 940
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_1a

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 943
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 947
    .end local v14    # "ratedValue":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v22, "DCM"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 948
    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 952
    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    .line 953
    const-string/jumbo v23, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    .line 952
    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 954
    const-string/jumbo v22, "ril.eri_ver_1"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "ERI_SysProp":Ljava/lang/String;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_20

    .line 957
    const-string/jumbo v22, "eri_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->createImsService(Landroid/content/Context;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isShowImsStatus()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    .line 968
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Show IMS registration status : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isImsRegistered()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateImsStatus(Z)V

    .line 976
    :goto_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 977
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 978
    const-string/jumbo v22, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 983
    :cond_1c
    :try_start_0
    new-instance v16, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    .line 984
    .local v16, "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v15

    .line 985
    .local v15, "rlcState":Ljava/lang/String;
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "rlcState : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string/jumbo v22, "Normal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string/jumbo v22, "Locked"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    if-eqz v22, :cond_23

    .line 763
    .end local v15    # "rlcState":Ljava/lang/String;
    .end local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_1d
    :goto_e
    return-void

    .line 920
    .end local v18    # "serial":Ljava/lang/String;
    .end local v19    # "serialNum":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v18, "ril.serialnumber"

    goto/16 :goto_a

    .line 929
    .restart local v18    # "serial":Ljava/lang/String;
    .restart local v19    # "serialNum":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 959
    .restart local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_20
    const-string/jumbo v22, "eri_version"

    const-string/jumbo v23, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 962
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_21
    const-string/jumbo v22, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 972
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 973
    const-string/jumbo v22, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 987
    .restart local v15    # "rlcState":Ljava/lang/String;
    .restart local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_23
    :try_start_1
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    .line 989
    .end local v15    # "rlcState":Ljava/lang/String;
    .end local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :catch_0
    move-exception v6

    .line 990
    .local v6, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 991
    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto/16 :goto_e

    .line 993
    .end local v6    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v7

    .line 994
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e
.end method


# virtual methods
.method createImsService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1976
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    .line 1978
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$13;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 1992
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 1975
    :cond_0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 760
    const/16 v0, 0x2c

    return v0
.end method

.method isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2026
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 2027
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 2029
    .local v0, "regiInfo":[Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2030
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const/4 v1, 0x1

    return v1

    .line 2034
    .end local v0    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    :cond_0
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return v3
.end method

.method isShowImsStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2039
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 2040
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "900"

    aput-object v2, v0, v3

    .line 2041
    .local v0, "fields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2042
    .local v1, "value":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 2043
    const-string/jumbo v3, "1"

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 2046
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 554
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 557
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 558
    const-string/jumbo v4, "fromBixby"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 559
    .local v0, "fromBixby":Z
    const-string/jumbo v4, "Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromBixby : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-eqz v0, :cond_1

    .line 561
    const-string/jumbo v4, "stateId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "AboutStatusFocusIPAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    const-string/jumbo v2, "wifi_ip_address"

    .line 605
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 606
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->requestFocusFromBixby(Ljava/lang/String;)V

    .line 553
    .end local v0    # "fromBixby":Z
    .end local v3    # "stateId":Ljava/lang/String;
    :cond_1
    return-void

    .line 567
    .restart local v0    # "fromBixby":Z
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "stateId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "AboutStatusFocusWiFiMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 568
    const-string/jumbo v2, "wifi_mac_address"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 569
    .local v2, "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "AboutStatusFocusBluetoothAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    const-string/jumbo v2, "bt_address"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 571
    .local v2, "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "AboutStatusFocusSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    const-string/jumbo v2, "serial_number"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 573
    .local v2, "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "AboutStatusFocusUptime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 574
    const-string/jumbo v2, "up_time"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 575
    .local v2, "key":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "AboutStatusBatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 576
    const-string/jumbo v2, "battery_status"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 577
    .local v2, "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "AboutStatusBatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 578
    const-string/jumbo v2, "battery_level"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 579
    .local v2, "key":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "FactoryDataReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 580
    const-string/jumbo v2, "factorydatareset"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 581
    .local v2, "key":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "AboutStatusNetwork"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 582
    const-string/jumbo v2, "operator_name"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 583
    .local v2, "key":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "AboutStatusSignalStrength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 584
    const-string/jumbo v2, "signal_strength"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 585
    .local v2, "key":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "AboutStatusMobileNetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 586
    const-string/jumbo v2, "network_type"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 587
    .local v2, "key":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "AboutStatusServiceState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 588
    const-string/jumbo v2, "service_state"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 589
    .local v2, "key":Ljava/lang/String;
    :cond_d
    const-string/jumbo v4, "AboutStatusRoaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 590
    const-string/jumbo v2, "roaming_state"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 591
    .local v2, "key":Ljava/lang/String;
    :cond_e
    const-string/jumbo v4, "AboutStatusMobileNetworkState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 592
    const-string/jumbo v2, "data_state"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 593
    .local v2, "key":Ljava/lang/String;
    :cond_f
    const-string/jumbo v4, "AboutStatusERIversion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 594
    const-string/jumbo v2, "eri_version"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 595
    .local v2, "key":Ljava/lang/String;
    :cond_10
    const-string/jumbo v4, "AboutStatusIMEI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 596
    const-string/jumbo v2, "imei"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 597
    .local v2, "key":Ljava/lang/String;
    :cond_11
    const-string/jumbo v4, "AboutStatusIMEISV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 598
    const-string/jumbo v2, "imei_sv"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 599
    .local v2, "key":Ljava/lang/String;
    :cond_12
    const-string/jumbo v4, "AboutStatusICCID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 600
    const-string/jumbo v2, "icc_id"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 601
    .local v2, "key":Ljava/lang/String;
    :cond_13
    const-string/jumbo v4, "AboutStatusIMSRegistration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    const-string/jumbo v2, "ims_reg"

    .local v2, "key":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 660
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 661
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    const-string/jumbo v10, "sim Id"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 662
    const-string/jumbo v10, "sim Id"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 663
    const-string/jumbo v10, "Status"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mActivePhone : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    new-instance v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    .line 666
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    .line 667
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 668
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/PhoneStateListener;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 669
    const/4 v8, 0x0

    .local v8, "simSlotNum":I
    :goto_0
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_1

    .line 670
    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    aput-object v10, v11, v8

    .line 669
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    .line 674
    const-string/jumbo v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 676
    const v10, 0x7f08005d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->addPreferencesFromResource(I)V

    .line 677
    const-string/jumbo v10, "battery_level"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    .line 678
    const-string/jumbo v10, "battery_status"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    .line 679
    const-string/jumbo v10, "bt_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 680
    const-string/jumbo v10, "wifi_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    .line 681
    const-string/jumbo v10, "wimax_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 682
    const-string/jumbo v10, "wifi_ip_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    .line 684
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    .line 685
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b0fa8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 686
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b131c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    .line 691
    const-string/jumbo v10, "VZW"

    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 692
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v7, "resetFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 695
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 696
    const/4 v3, 0x0

    .line 699
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 703
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setFactoryResetDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 705
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 707
    .end local v4    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    if-eqz v3, :cond_2

    .line 711
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 724
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "resetFile":Ljava/io/File;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 731
    :cond_3
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/preference/Preference;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 732
    const/4 v8, 0x0

    :goto_4
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_9

    .line 733
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v11, "signal_strength"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    aput-object v11, v10, v8

    .line 732
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 709
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "resetFile":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_2

    .line 711
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 712
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 708
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 709
    :goto_5
    if-eqz v3, :cond_5

    .line 711
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 708
    :cond_5
    :goto_6
    throw v10

    .line 712
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 717
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string/jumbo v10, "factorydatareset"

    const v11, 0x7f0b007c

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 720
    .end local v7    # "resetFile":Ljava/io/File;
    :cond_7
    const-string/jumbo v10, "factorydatareset"

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 725
    :cond_8
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Lcom/android/internal/telephony/Phone;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 726
    const/4 v8, 0x0

    :goto_7
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_3

    .line 727
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    aput-object v11, v10, v8

    .line 726
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 736
    :cond_9
    const-string/jumbo v10, "up_time"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    .line 737
    const-string/jumbo v10, "ethernet_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 740
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasBluetooth()Z

    move-result v10

    if-nez v10, :cond_a

    .line 741
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 742
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 745
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasWimax()Z

    move-result v10

    if-nez v10, :cond_b

    .line 746
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 747
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 750
    :cond_b
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 751
    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_8
    if-ge v10, v12, :cond_c

    aget-object v9, v11, v10

    .line 752
    .local v9, "sintent":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 755
    .end local v9    # "sintent":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    .line 656
    return-void

    .line 708
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "resetFile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 705
    .local v3, "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1053
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 1054
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1056
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1069
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v3, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1072
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1073
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1079
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1080
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 1082
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1085
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v3, :cond_3

    .line 1093
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1095
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    return-void

    .line 1058
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 1059
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v3, :cond_5

    .line 1060
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 1061
    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1064
    :cond_5
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 1065
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1086
    .end local v2    # "simSlotNum":I
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1002
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1004
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1006
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 1028
    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    .line 1027
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1029
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1031
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1032
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    .line 1040
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 1044
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1045
    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1046
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1044
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1048
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1001
    return-void

    .line 1010
    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 1011
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 1012
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-nez v2, :cond_3

    .line 1013
    new-instance v2, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1014
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 1015
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 1018
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 1019
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1022
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v1, "getLatestIntent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1024
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 1023
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a01d0

    const/4 v6, 0x0

    .line 626
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    const-string/jumbo v3, "Status"

    const-string/jumbo v4, "in StatusVZW.java onViewCreated()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 633
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 632
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 638
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 638
    invoke-direct {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    .local v1, "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 643
    const v5, 0x7f0a04b4

    .line 642
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 640
    invoke-virtual {v1, v6, v3, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 644
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 645
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 648
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 650
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 625
    .end local v0    # "listview":Landroid/widget/ListView;
    .end local v1    # "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method setFactoryResetDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1962
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1963
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1965
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1971
    .local v1, "date_string":Ljava/lang/String;
    const-string/jumbo v4, "factorydatareset"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    return-void

    .line 1966
    .end local v1    # "date_string":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1968
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 1488
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWimaxStatus()V

    .line 1489
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWifiStatus()V

    .line 1490
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setBtStatus()V

    .line 1491
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setIpAddressStatus()V

    .line 1487
    return-void
.end method

.method updateImsStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 2016
    const/4 v0, 0x0

    .line 2017
    .local v0, "imsSummaryStrId":I
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2018
    if-eqz p1, :cond_0

    const v0, 0x7f0b0d2a

    .line 2022
    :goto_0
    const-string/jumbo v1, "ims_reg"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    return-void

    .line 2018
    :cond_0
    const v0, 0x7f0b0d2b

    goto :goto_0

    .line 2020
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0b0529

    goto :goto_0

    :cond_2
    const v0, 0x7f0b052a

    goto :goto_0
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "activePhone"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getHost()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1328
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not attached host is null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void

    .line 1332
    :cond_0
    const/4 v2, 0x0

    .line 1333
    .local v2, "preferenceStrength":Landroid/preference/Preference;
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSignalStrength() slotId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / activePhone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*** "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v8, v8, [Landroid/preference/Preference;

    iput-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 1336
    const/4 v6, 0x0

    .end local v2    # "preferenceStrength":Landroid/preference/Preference;
    .local v6, "simSlotNum":I
    :goto_0
    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v6, v8, :cond_2

    .line 1337
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v9, "signal_strength"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1338
    if-ne p2, v6, :cond_1

    .line 1339
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v2, v8, v6

    .line 1336
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1343
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1344
    if-eqz v2, :cond_3

    .line 1345
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1347
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    .line 1348
    .local v5, "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v4

    .line 1350
    .local v4, "signalAsu":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1351
    const v9, 0x7f0b0fc9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1351
    const-string/jumbo v9, "   "

    .line 1350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1352
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1352
    const-string/jumbo v9, " "

    .line 1350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1353
    const v9, 0x7f0b0fca

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1321
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "signalAsu":I
    .end local v5    # "signalDbm":I
    :cond_3
    :goto_1
    return-void

    .line 1356
    :cond_4
    if-eqz v2, :cond_3

    .line 1358
    iget-boolean v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    if-eqz v8, :cond_5

    .line 1359
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 1360
    return-void

    .line 1365
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1373
    .restart local v3    # "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v5

    .line 1374
    .restart local v5    # "signalDbm":I
    const/4 v8, -0x1

    if-ne v8, v5, :cond_6

    const/4 v5, 0x0

    .line 1376
    :cond_6
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v4

    .line 1377
    .restart local v4    # "signalAsu":I
    const-string/jumbo v8, "Combination"

    const-string/jumbo v9, "Strawberry"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1379
    const/4 v8, -0x1

    if-eq v8, v4, :cond_7

    const/16 v8, 0x63

    if-ne v8, v4, :cond_9

    .line 1380
    :cond_7
    :goto_2
    const/16 v5, -0x71

    .line 1381
    const/4 v4, 0x0

    .line 1395
    :cond_8
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1396
    const v9, 0x7f0b0fc9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1396
    const-string/jumbo v9, "   "

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1397
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1397
    const-string/jumbo v9, " "

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1398
    const v9, 0x7f0b0fca

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1400
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Status] updateSignalStrength : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1401
    const v10, 0x7f0b0fc9

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1401
    const-string/jumbo v10, "   "

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1402
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1402
    const-string/jumbo v10, " "

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1403
    const v10, 0x7f0b0fca

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1379
    :cond_9
    const/16 v8, 0xff

    if-ne v8, v4, :cond_8

    goto/16 :goto_2

    .line 1384
    :cond_a
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 1385
    .local v7, "subId":[I
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1387
    .local v1, "phoneId":I
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v8, v8, p2

    .line 1388
    const-string/jumbo v8, "gsm.network.type"

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1387
    invoke-static {v1, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "networkType":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v8, v4, :cond_b

    const/16 v8, 0x63

    if-ne v8, v4, :cond_c

    .line 1390
    :cond_b
    :goto_4
    const/16 v5, -0x71

    .line 1391
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1389
    :cond_c
    const/16 v8, 0xff

    if-eq v8, v4, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1412
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1414
    const v3, 0x7f0b0fc9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1414
    const-string/jumbo v3, "   "

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1415
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1415
    const-string/jumbo v3, " "

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1416
    const v3, 0x7f0b0fca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1408
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 1524
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 1526
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1527
    const-wide/16 v2, 0x1

    .line 1530
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1522
    return-void
.end method
