.class public Lcom/android/settings/deviceinfo/Status;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$1;,
        Lcom/android/settings/deviceinfo/Status$2;,
        Lcom/android/settings/deviceinfo/Status$3;,
        Lcom/android/settings/deviceinfo/Status$4;,
        Lcom/android/settings/deviceinfo/Status$5;,
        Lcom/android/settings/deviceinfo/Status$6;,
        Lcom/android/settings/deviceinfo/Status$MyHandler;,
        Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private bResetFileExist:Ljava/lang/Boolean;

.field private bShowImsStatus:Z

.field private default_network:Ljava/lang/String;

.field private isLTEOnly:Z

.field private isSysScopeStatus:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryLife:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mFirstCall:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

.field private mSysScopePref:Landroid/preference/Preference;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sysscopeForChnRoot:Z

.field private user_name:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic -get2()[B
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method static synthetic -set1([B)[B
    .locals 0

    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic -set2(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/deviceinfo/Status;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateFirstCallDate(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 132
    sput-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 146
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 190
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 240
    const-string/jumbo v0, "ro.telephony.default_network"

    const-string/jumbo v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->default_network:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "11"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->default_network:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->isLTEOnly:Z

    .line 243
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 246
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bResetFileExist:Ljava/lang/Boolean;

    .line 284
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    .line 295
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 312
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->bShowImsStatus:Z

    .line 315
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    .line 962
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 999
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 1017
    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mWfcObserver:Landroid/database/ContentObserver;

    .line 1053
    new-instance v0, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 241
    goto :goto_0
.end method

.method private changeSysScopeStatus()V
    .locals 15

    .prologue
    const v14, 0x7f0b052f

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 882
    const/4 v2, 0x0

    .line 883
    .local v2, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 884
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 886
    .local v4, "ut":J
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_1

    const-wide/16 v6, 0x78

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 887
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "400-810-5858"

    aput-object v7, v6, v10

    const v7, 0x7f0b0531

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "status":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    .line 915
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_8

    .line 916
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 881
    :goto_1
    return-void

    .line 891
    .local v2, "status":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b0530

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 894
    .local v2, "status":Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_5

    .line 895
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-eq v3, v13, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->checkRootingCondition()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "400-810-5858"

    aput-object v7, v6, v10

    const v7, 0x7f0b0531

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, "status":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_0

    .line 898
    .local v2, "status":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_4

    .line 899
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    .line 900
    const v3, 0x7f0b0532

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 902
    .local v2, "status":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    .line 903
    invoke-virtual {p0, v14}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 906
    .local v2, "status":Ljava/lang/String;
    :cond_5
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v13, :cond_6

    .line 907
    const v3, 0x7f0b0530

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 908
    .local v2, "status":Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_7

    .line 909
    const v3, 0x7f0b0532

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 911
    .local v2, "status":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v14}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    goto :goto_0

    .line 918
    :cond_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private connectToRilService()V
    .locals 4

    .prologue
    .line 1046
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1045
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 646
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 647
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 648
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 650
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOemData()V
    .locals 6

    .prologue
    .line 924
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 925
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 929
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 930
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 931
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 932
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 938
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 923
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v2

    .line 940
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 937
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 938
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 934
    :goto_1
    return-void

    .line 939
    :catch_2
    move-exception v2

    .line 940
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 935
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 937
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 938
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 935
    :goto_2
    throw v3

    .line 939
    :catch_3
    move-exception v2

    .line 940
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 321
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

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

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
    .line 946
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 947
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 948
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 949
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 945
    :goto_0
    return-void

    .line 955
    :cond_0
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 638
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 639
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 641
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
    .line 1003
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 552
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_0
    return-void
.end method

.method private requestFocusFromBixby(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Status$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/Status$7;-><init>(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V

    .line 381
    const-wide/16 v2, 0x3e8

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 604
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 605
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 607
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    :cond_1
    return-void

    .line 606
    :cond_2
    const/4 v0, 0x0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0
.end method

.method private setFirstCallstatus()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    .line 1072
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1073
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1076
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1077
    .local v3, "size":I
    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1078
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1079
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1090
    :goto_0
    new-instance v4, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    .line 1091
    new-instance v4, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1092
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1071
    return-void

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "IOException in getOemData!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1080
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1081
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1085
    :catch_2
    move-exception v2

    .line 1086
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "IOException in getOemData!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1084
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1082
    :goto_1
    throw v4

    .line 1085
    :catch_3
    move-exception v2

    .line 1086
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Status"

    const-string/jumbo v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 576
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    const v1, 0x7f0b0532

    .line 873
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    .line 872
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 590
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 591
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    return-void

    .line 590
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddress":Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 583
    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateFirstCallDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_0
    return-void
.end method

.method private updateStatus()V
    .locals 12

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 737
    const-string/jumbo v9, "SPR"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 738
    iget-boolean v9, p0, Lcom/android/settings/deviceinfo/Status;->isLTEOnly:Z

    if-nez v9, :cond_5

    .line 739
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    .line 760
    :goto_0
    const-string/jumbo v9, "ethernet_mac_address"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    .line 767
    const-string/jumbo v9, "ril.serialnumber"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "mRilSerial":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "00000000000"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_0
    const-string/jumbo v6, "ro.serialno"

    .line 769
    .local v6, "serial":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 770
    .local v7, "serialNum":Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v9, :cond_1

    .line 771
    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "serial:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", serialNum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v9

    if-nez v9, :cond_2

    .line 775
    const-string/jumbo v9, "KDI"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 774
    if-nez v9, :cond_2

    .line 775
    const-string/jumbo v9, "MTR"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 774
    if-nez v9, :cond_2

    .line 776
    const-string/jumbo v9, "USC"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "LRA"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "ACG"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 774
    if-eqz v9, :cond_b

    .line 777
    :cond_2
    const-string/jumbo v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 785
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 786
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "ratedValue":Ljava/lang/String;
    const-string/jumbo v9, "wifi_ip_address"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 793
    const-string/jumbo v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 798
    .end local v3    # "ratedValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->createImsService(Landroid/content/Context;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->isShowImsStatus()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/Status;->bShowImsStatus:Z

    .line 800
    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Show IMS registration status : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/deviceinfo/Status;->bShowImsStatus:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-boolean v9, p0, Lcom/android/settings/deviceinfo/Status;->bShowImsStatus:Z

    if-eqz v9, :cond_d

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->isImsRegistered()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->updateImsStatus(Z)V

    .line 811
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 812
    const-string/jumbo v9, "first_call_date"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    .line 813
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setFirstCallstatus()V

    .line 819
    :goto_4
    :try_start_0
    new-instance v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    .line 820
    .local v5, "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, "rlcState":Ljava/lang/String;
    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rlcState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string/jumbo v9, "Normal"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "Locked"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_10

    .line 735
    .end local v4    # "rlcState":Ljava/lang/String;
    .end local v5    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_4
    :goto_5
    return-void

    .line 741
    .end local v2    # "mRilSerial":Ljava/lang/String;
    .end local v6    # "serial":Ljava/lang/String;
    .end local v7    # "serialNum":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 742
    const-string/jumbo v10, "phone"

    .line 741
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 743
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNai()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 744
    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "user name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 746
    :cond_6
    const-string/jumbo v9, "user_name"

    const-string/jumbo v10, "<Not set>"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_7
    const-string/jumbo v9, "user_name"

    iget-object v10, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    const-string/jumbo v9, "user_name"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 755
    :cond_9
    const-string/jumbo v9, "user_name"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .restart local v2    # "mRilSerial":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "ril.serialnumber"

    goto/16 :goto_1

    .line 779
    .restart local v6    # "serial":Ljava/lang/String;
    .restart local v7    # "serialNum":Ljava/lang/String;
    :cond_b
    sget-boolean v9, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v9, :cond_c

    .line 780
    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "serialNum : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_c
    const-string/jumbo v9, "serial_number"

    invoke-direct {p0, v9, v7}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 804
    :cond_d
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v9, :cond_e

    .line 805
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v9}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 807
    :cond_e
    const-string/jumbo v9, "ims_reg"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 815
    :cond_f
    const-string/jumbo v9, "first_call_date"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 823
    .restart local v4    # "rlcState":Ljava/lang/String;
    .restart local v5    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_10
    :try_start_1
    const-string/jumbo v9, "installment_balance"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 825
    .end local v4    # "rlcState":Ljava/lang/String;
    .end local v5    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    const-string/jumbo v9, "installment_balance"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 827
    const-string/jumbo v9, "Status"

    const-string/jumbo v10, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto/16 :goto_5

    .line 829
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v1

    .line 830
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "installment_balance"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v9, "Status"

    const-string/jumbo v10, "RemoteLockControlManager not supported"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method


# virtual methods
.method InitSecAddtionalPreferences()V
    .locals 10

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    .line 661
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 663
    const-string/jumbo v7, "battery_life"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/preference/Preference;

    .line 665
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getBatteryLife()I

    move-result v0

    .line 666
    .local v0, "battery_life":I
    const-string/jumbo v7, "Status"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery life : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    const/16 v7, 0x50

    if-lt v0, v7, :cond_2

    .line 671
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/preference/Preference;

    const v8, 0x7f0b052b

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 680
    :goto_0
    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 682
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    .local v6, "resetFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 685
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Status;->bResetFileExist:Ljava/lang/Boolean;

    .line 686
    const/4 v3, 0x0

    .line 689
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 693
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Status;->setFactoryResetDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 695
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 697
    .end local v4    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 699
    if-eqz v3, :cond_0

    .line 701
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 712
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "resetFile":Ljava/io/File;
    :cond_0
    :goto_3
    const-string/jumbo v7, "ethernet_mac_address"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->removePreferencesSimplifiedAboutDevice()V

    .line 717
    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v7, :cond_8

    .line 718
    const-string/jumbo v7, "sysscope_status"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v7, "sysscope_status_root"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    .line 659
    :goto_4
    return-void

    .line 668
    :cond_1
    const-string/jumbo v7, "battery_life"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    const/16 v7, 0x32

    if-lt v0, v7, :cond_3

    .line 673
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/preference/Preference;

    const v8, 0x7f0b052c

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 675
    :cond_3
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/preference/Preference;

    const v8, 0x7f0b052d

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 699
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "resetFile":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_0

    .line 701
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 702
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 698
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 699
    :goto_5
    if-eqz v3, :cond_5

    .line 701
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 698
    :cond_5
    :goto_6
    throw v7

    .line 702
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 707
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string/jumbo v7, "factorydatareset"

    const v8, 0x7f0b007c

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 710
    .end local v6    # "resetFile":Ljava/io/File;
    :cond_7
    const-string/jumbo v7, "factorydatareset"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 721
    :cond_8
    const-string/jumbo v7, "sysscope_status_root"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 722
    const-string/jumbo v7, "sysscope_status"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/preference/Preference;

    goto :goto_4

    .line 698
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "resetFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 695
    .local v3, "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method createImsService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1154
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/android/settings/deviceinfo/Status$8;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Status$8;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 1166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 1152
    :cond_0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 482
    const/16 v0, 0x2c

    return v0
.end method

.method isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1181
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1184
    .local v0, "regiInfo":[Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1185
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v1, 0x1

    return v1

    .line 1189
    .end local v0    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    :cond_0
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return v3
.end method

.method isShowImsStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1194
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 1195
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "900"

    aput-object v2, v0, v3

    .line 1196
    .local v0, "fields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1197
    .local v1, "value":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1198
    const-string/jumbo v3, "1"

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1201
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 334
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 335
    const-string/jumbo v4, "fromBixby"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
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

    .line 337
    if-eqz v0, :cond_1

    .line 338
    const-string/jumbo v4, "stateId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
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

    .line 340
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "AboutStatusFocus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    const-string/jumbo v2, "first_call_date"

    .line 365
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 366
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->requestFocusFromBixby(Ljava/lang/String;)V

    .line 330
    .end local v0    # "fromBixby":Z
    .end local v3    # "stateId":Ljava/lang/String;
    :cond_1
    return-void

    .line 344
    .restart local v0    # "fromBixby":Z
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "stateId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "AboutStatusFocusIPAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    const-string/jumbo v2, "wifi_ip_address"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 346
    .local v2, "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "AboutStatusFocusWiFiMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 347
    const-string/jumbo v2, "wifi_mac_address"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 348
    .local v2, "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "AboutStatusFocusBluetoothAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 349
    const-string/jumbo v2, "bt_address"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 350
    .local v2, "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "AboutStatusFocusSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    const-string/jumbo v2, "serial_number"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 352
    .local v2, "key":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "AboutStatusFocusUptime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 353
    const-string/jumbo v2, "up_time"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 354
    .local v2, "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "AboutStatusFocusDeviceStatusValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 355
    const-string/jumbo v2, "sysscope_status"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 357
    .local v2, "key":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "AboutStatusBatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 358
    const-string/jumbo v2, "battery_status"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 359
    .local v2, "key":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "AboutStatusBatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 360
    const-string/jumbo v2, "battery_level"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 361
    .local v2, "key":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "AboutStatusIMSRegistration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    const-string/jumbo v2, "ims_reg"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 420
    new-instance v1, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 422
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 423
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 425
    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 426
    const-string/jumbo v1, "battery_level"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 427
    const-string/jumbo v1, "battery_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 428
    const-string/jumbo v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 429
    const-string/jumbo v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 430
    const-string/jumbo v1, "wimax_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 431
    const-string/jumbo v1, "wifi_ip_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 434
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0fa8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b131c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 438
    const-string/jumbo v1, "up_time"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 440
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasBluetooth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasWimax()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 450
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 451
    sget-object v2, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 452
    .local v0, "intent":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 469
    if-eqz v1, :cond_4

    .line 471
    :cond_3
    const-string/jumbo v1, "sim_status"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "imei_info"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 476
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->InitSecAddtionalPreferences()V

    .line 417
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 516
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 522
    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 526
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->registerForWfcRegistrationStatus(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 487
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 491
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateStatus()V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 495
    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    .line 494
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 504
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->registerForWfcRegistrationStatus(Z)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a01d0

    const/4 v6, 0x0

    .line 387
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const-string/jumbo v3, "Status"

    const-string/jumbo v4, "in Status.java onViewCreated()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 394
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 393
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 399
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 399
    invoke-direct {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .local v1, "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 404
    const v5, 0x7f0a04b4

    .line 403
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 401
    invoke-virtual {v1, v6, v3, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 405
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 406
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 409
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 386
    .end local v0    # "listview":Landroid/widget/ListView;
    .end local v1    # "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public removePreferencesSimplifiedAboutDevice()V
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSimplifiedAboutDevice2015()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string/jumbo v0, "battery_level"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v0, "battery_status"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v0, "battery_life"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void
.end method

.method setFactoryResetDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1140
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "date_string":Ljava/lang/String;
    const-string/jumbo v4, "factorydatareset"

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void

    .line 1143
    .end local v1    # "date_string":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 621
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 622
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 623
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 619
    return-void
.end method

.method updateImsStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1172
    .local v0, "imsSummaryStrId":I
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1173
    if-eqz p1, :cond_0

    const v0, 0x7f0b0d2a

    .line 1177
    :goto_0
    const-string/jumbo v1, "ims_reg"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void

    .line 1173
    :cond_0
    const v0, 0x7f0b0d2b

    goto :goto_0

    .line 1175
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0b0529

    goto :goto_0

    :cond_2
    const v0, 0x7f0b052a

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 628
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 630
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 631
    const-wide/16 v2, 0x1

    .line 634
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    return-void
.end method
