.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static mMaxClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 44
    const-string/jumbo v0, "GATE"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 49
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 51
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 52
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    .line 89
    sput v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 92
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 93
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 41
    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "mRvfMode":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 759
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 760
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 761
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 762
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 764
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 646
    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 647
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isMobileApON(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 820
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 821
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 822
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi Manager is null, returning mobile ap not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return v4

    .line 825
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 827
    .local v0, "mWifiApState":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 828
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 829
    :cond_2
    return v4
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 768
    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    return v4

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 771
    const v3, 0x107003b

    .line 770
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "mProvisionApp":[Ljava/lang/String;
    const-string/jumbo v2, "ATT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 774
    const-string/jumbo v2, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 773
    if-nez v2, :cond_1

    .line 774
    const-string/jumbo v2, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 773
    if-eqz v2, :cond_4

    .line 775
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "tetheringProvisionApp":Ljava/lang/String;
    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 778
    if-nez v0, :cond_3

    .line 779
    :cond_2
    return v4

    .line 778
    :cond_3
    array-length v2, v0

    if-ne v2, v5, :cond_2

    .line 782
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 783
    return v4

    .line 787
    .end local v1    # "tetheringProvisionApp":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 788
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 789
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v4

    .line 792
    :cond_5
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_6
    array-length v2, v0

    if-ne v2, v5, :cond_7

    .line 796
    const/4 v2, 0x1

    return v2

    .line 797
    :cond_7
    return v4
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 808
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 809
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 810
    return v4

    .line 811
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 812
    .local v1, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 813
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v2, 0x1

    return v2

    .line 816
    :cond_1
    return v4
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 801
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 802
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 803
    const/4 v1, 0x0

    return v1

    .line 804
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 639
    return-void
.end method

.method private setRvfMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 747
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 748
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 749
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    .line 750
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 751
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 746
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    .line 663
    const-string/jumbo v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 665
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v6, "extra_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 666
    .local v0, "extra_type":I
    const-string/jumbo v6, "req_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 668
    .local v1, "req_type":I
    if-eqz v5, :cond_3

    .line 669
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 670
    .local v4, "wifiApState":I
    if-ne p2, v10, :cond_1

    .line 672
    if-nez v1, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 674
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 672
    if-eqz v6, :cond_0

    .line 675
    return-void

    .line 676
    :cond_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    .line 677
    add-int v6, v0, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v0, v10, :cond_1

    .line 678
    return-void

    .line 681
    :cond_1
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 682
    .local v3, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v3, :cond_2

    .line 683
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 685
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v2, "startDialogIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string/jumbo v6, "extra_type"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 662
    .end local v2    # "startDialogIntent":Landroid/content/Intent;
    .end local v3    # "statusBar":Landroid/app/StatusBarManager;
    .end local v4    # "wifiApState":I
    :cond_3
    return-void
.end method

.method private startHotspotExtenderModewarning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 652
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotExtenderModewarning"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 655
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 651
    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 619
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 621
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 623
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 618
    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 629
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 632
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 633
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string/jumbo v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    return-void
.end method


# virtual methods
.method clearLimitDataReachNotification(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 742
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x7f0b0fb5

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 740
    return-void
.end method

.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 712
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0b0fb4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 710
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 58
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v49

    .line 107
    .local v49, "userID":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onReceive: action "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " userID :"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v5, :cond_0

    if-eqz v49, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "do nothing, action is null or Knox userID:"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_1
    const-string/jumbo v53, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_17

    .line 114
    const-string/jumbo v53, "wifi_state"

    const/16 v54, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 115
    .local v9, "apState":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    packed-switch v9, :pswitch_data_0

    .line 104
    .end local v9    # "apState":I
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 119
    .restart local v9    # "apState":I
    :pswitch_1
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 122
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_3

    .line 123
    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3
    sget-boolean v53, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v53, :cond_4

    .line 131
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearLimitDataReachNotification(Landroid/content/Context;)V

    .line 134
    :cond_4
    const-string/jumbo v53, "ATT"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_5

    .line 135
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    .line 136
    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 138
    :cond_5
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_6

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 141
    .local v11, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v53, "wifi_ap_saved_state"

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_6

    .line 142
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 143
    const-string/jumbo v53, "wifi_ap_saved_state"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 150
    .end local v11    # "cr":Landroid/content/ContentResolver;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_7

    .line 151
    const-string/jumbo v53, "SAMSUNG_HOTSPOT"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 154
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string/jumbo v54, "PROVISIONING_RESULT"

    const/16 v55, 0x0

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v45

    .line 155
    .local v45, "tempProvisonResult":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "value of provisioning result is  and flag value "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "  "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget-boolean v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_8

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-eqz v53, :cond_b

    .line 193
    :cond_8
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 196
    :cond_9
    :goto_2
    :pswitch_2
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v53, :cond_a

    .line 197
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 198
    .local v52, "wm":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a

    .line 199
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v53

    if-eqz v53, :cond_a

    .line 200
    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 204
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    invoke-interface/range {v53 .. v53}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 206
    .local v17, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v53, "PROVISIONING_RESULT"

    const/16 v54, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 157
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v53

    if-nez v53, :cond_8

    .line 158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v53, v0

    if-nez v53, :cond_8

    const-string/jumbo v53, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_8

    .line 159
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 160
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_9

    .line 161
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_d

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 163
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const-string/jumbo v53, "vzw_provision_result"

    const/16 v54, -0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    .line 164
    .local v41, "provisionValue":I
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v53, :cond_c

    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "provisionValue.."

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_c
    packed-switch v41, :pswitch_data_1

    goto/16 :goto_2

    .line 176
    :pswitch_3
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 170
    :pswitch_4
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 171
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 181
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v41    # "provisionValue":I
    :cond_d
    if-nez v45, :cond_e

    .line 182
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 183
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 186
    :cond_e
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    .line 213
    .end local v45    # "tempProvisonResult":I
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :pswitch_5
    sget-boolean v53, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v53, :cond_10

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_limit"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_14

    const/16 v24, 0x1

    .line 215
    .local v24, "limited":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_limit_value"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 216
    .local v23, "limitValue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_mobile_data_usage_value"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 217
    .local v48, "usageValue":Ljava/lang/String;
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v53, :cond_f

    .line 218
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Mobile AP data limited : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", limit data : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", usage data : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_f
    if-eqz v24, :cond_10

    if-eqz v48, :cond_10

    move-object/from16 v0, v48

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_10

    .line 220
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Mobile AP usage data reached limit, show notification"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showLimitDataReachNotification(Landroid/content/Context;)V

    .line 224
    .end local v23    # "limitValue":Ljava/lang/String;
    .end local v24    # "limited":Z
    .end local v48    # "usageValue":Ljava/lang/String;
    :cond_10
    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 226
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 227
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    if-eqz v52, :cond_2

    .line 228
    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    .line 229
    .local v33, "msg":Landroid/os/Message;
    const/16 v53, 0x4d

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    .line 230
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v53, "bigdata"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    const-string/jumbo v53, "feature"

    const-string/jumbo v54, "MHSI"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v30, "not_support"

    .line 239
    .local v30, "mWifiSharing":Ljava/lang/String;
    const-string/jumbo v25, "swlan0"

    .line 244
    .local v25, "mIface":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_timeout_setting"

    sget v55, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v55, v55, 0x3c

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 245
    .local v28, "mTimeoutSetting":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 246
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const-string/jumbo v53, "wifi_ap_wifi_sharing"

    const/16 v54, 0xa

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0xa

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_15

    .line 247
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Wifi Sharing first time provider value "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "wifi_ap_wifi_sharing"

    const/16 v56, 0xa

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string/jumbo v30, "-1"

    .line 253
    :goto_4
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v29

    .line 254
    .local v29, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v34, "CustomSSID"

    .line 255
    .local v34, "nameOfHotspot":Ljava/lang/String;
    const-string/jumbo v7, "All"

    .line 257
    .local v7, "allowedDevice":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v53, v0

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_11

    const-string/jumbo v7, "Only"

    .line 259
    :cond_11
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Android"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Verizon"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Samsung"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_12

    .line 260
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "Galaxy"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    .line 259
    if-nez v53, :cond_12

    .line 260
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string/jumbo v54, "SM-"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    .line 259
    if-eqz v53, :cond_13

    .line 260
    :cond_12
    const-string/jumbo v34, "DefaultSSID"

    .line 262
    :cond_13
    const-string/jumbo v32, ""

    .line 263
    .local v32, "mhsData":Ljava/lang/String;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v29

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget v54, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 265
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Bigdata logging "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string/jumbo v53, "data"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, v33

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 214
    .end local v7    # "allowedDevice":Ljava/lang/String;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v25    # "mIface":Ljava/lang/String;
    .end local v28    # "mTimeoutSetting":I
    .end local v29    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "mWifiSharing":Ljava/lang/String;
    .end local v32    # "mhsData":Ljava/lang/String;
    .end local v33    # "msg":Landroid/os/Message;
    .end local v34    # "nameOfHotspot":Ljava/lang/String;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_14
    const/16 v24, 0x0

    .restart local v24    # "limited":Z
    goto/16 :goto_3

    .line 250
    .end local v24    # "limited":Z
    .restart local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v25    # "mIface":Ljava/lang/String;
    .restart local v28    # "mTimeoutSetting":I
    .restart local v30    # "mWifiSharing":Ljava/lang/String;
    .restart local v33    # "msg":Landroid/os/Message;
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_16

    const-string/jumbo v30, "sharing_on"

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v30, "sharing_off"

    goto/16 :goto_4

    .line 272
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v25    # "mIface":Ljava/lang/String;
    .end local v28    # "mTimeoutSetting":I
    .end local v30    # "mWifiSharing":Ljava/lang/String;
    .end local v33    # "msg":Landroid/os/Message;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :pswitch_6
    const/16 v53, 0x0

    sput v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 273
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->setRvfMode(Landroid/content/Context;I)V

    .line 274
    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 277
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_2

    .line 278
    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v9    # "apState":I
    :cond_17
    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_25

    .line 287
    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 289
    .local v36, "option":I
    if-nez v36, :cond_1d

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 292
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_18

    const-string/jumbo v53, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_18

    .line 293
    return-void

    .line 295
    :cond_18
    :try_start_1
    const-string/jumbo v53, "wifi_ap_plugged_type"

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v38

    .line 299
    .local v38, "pluggedType":I
    :goto_5
    const-string/jumbo v53, "TMO"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1a

    .line 300
    const-string/jumbo v53, "NEWCO"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    .line 299
    :goto_6
    if-eqz v53, :cond_19

    .line 301
    if-nez v38, :cond_2

    .line 302
    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v40

    .line 303
    .local v40, "powermode_value":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "ALARM_START : set "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " sec"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v40, :cond_1b

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v18, v54, v56

    .line 307
    .local v18, "expireTime":J
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v6, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    .line 311
    .local v37, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 312
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v53, 0x0

    move/from16 v0, v53

    move-wide/from16 v1, v18

    move-object/from16 v3, v37

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 314
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 315
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 296
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v18    # "expireTime":J
    .end local v37    # "pending":Landroid/app/PendingIntent;
    .end local v38    # "pluggedType":I
    .end local v40    # "powermode_value":I
    :catch_0
    move-exception v12

    .line 297
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v38, 0x0

    .restart local v38    # "pluggedType":I
    goto/16 :goto_5

    .line 299
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1a
    const/16 v53, 0x1

    goto/16 :goto_6

    .line 317
    .restart local v40    # "powermode_value":I
    :cond_1b
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_1c

    .line 318
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    .line 322
    .restart local v37    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 323
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 325
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v37    # "pending":Landroid/app/PendingIntent;
    :cond_1c
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 328
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v38    # "pluggedType":I
    .end local v40    # "powermode_value":I
    :cond_1d
    const/16 v53, 0x4

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_1e

    .line 329
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v53, :cond_2

    .line 331
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 334
    :cond_1e
    const/16 v53, 0x1

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_24

    .line 335
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_EXPIRE"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 337
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 338
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 341
    const-string/jumbo v53, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/PowerManager;

    .line 342
    .local v39, "pm":Landroid/os/PowerManager;
    const-string/jumbo v53, "MobileAPCloseService"

    const/16 v54, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v54

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    .line 343
    .local v27, "mStopService":Landroid/os/PowerManager$WakeLock;
    if-eqz v27, :cond_1f

    .line 345
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    :cond_1f
    :goto_7
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 353
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v50

    .line 354
    .local v50, "wifiApState":I
    const/16 v51, 0x0

    .line 355
    .local v51, "wifiSavedState":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v40

    .line 357
    .restart local v40    # "powermode_value":I
    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    .line 358
    .restart local v33    # "msg":Landroid/os/Message;
    const/16 v53, 0x3

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    .line 359
    const/16 v35, 0x0

    .line 360
    .local v35, "num":I
    const/16 v53, 0xd

    move/from16 v0, v50

    move/from16 v1, v53

    if-ne v0, v1, :cond_20

    .line 362
    :try_start_3
    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v35

    .line 367
    :cond_20
    :goto_8
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "powermode_value = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez v35, :cond_21

    const/16 v53, 0xd

    move/from16 v0, v50

    move/from16 v1, v53

    if-ne v0, v1, :cond_21

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v53

    if-eqz v53, :cond_22

    .line 393
    :cond_21
    :goto_9
    if-eqz v27, :cond_2

    .line 395
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 396
    const/16 v27, 0x0

    .local v27, "mStopService":Landroid/os/PowerManager$WakeLock;
    goto/16 :goto_0

    .line 346
    .end local v33    # "msg":Landroid/os/Message;
    .end local v35    # "num":I
    .end local v40    # "powermode_value":I
    .end local v50    # "wifiApState":I
    .end local v51    # "wifiSavedState":I
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    .local v27, "mStopService":Landroid/os/PowerManager$WakeLock;
    :catch_1
    move-exception v15

    .line 347
    .local v15, "e":Ljava/lang/Throwable;
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 363
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v33    # "msg":Landroid/os/Message;
    .restart local v35    # "num":I
    .restart local v40    # "powermode_value":I
    .restart local v50    # "wifiApState":I
    .restart local v51    # "wifiSavedState":I
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v14

    .line 364
    .local v14, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_8

    .line 368
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_22
    if-eqz v40, :cond_21

    .line 369
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "--> ap disable"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 371
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_23

    .line 372
    const v53, 0x7f0b0fb6

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/widget/Toast;->show()V

    .line 374
    :cond_23
    const-string/jumbo v53, "ATT"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_21

    .line 375
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    goto :goto_9

    .line 397
    :catch_3
    move-exception v15

    .line 398
    .restart local v15    # "e":Ljava/lang/Throwable;
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Cannot release wake lock ~~"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 401
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v27    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v33    # "msg":Landroid/os/Message;
    .end local v35    # "num":I
    .end local v39    # "pm":Landroid/os/PowerManager;
    .end local v40    # "powermode_value":I
    .end local v50    # "wifiApState":I
    .end local v51    # "wifiSavedState":I
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_24
    const/16 v53, 0x2

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    .line 402
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "ALARM_STOP"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v53, :cond_2

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2

    .line 404
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v53

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v53, "wifiap_power_mode_alarm_option"

    const/16 v54, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const/16 v53, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    .line 407
    .restart local v37    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v53, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 408
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 409
    const/16 v53, 0x0

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 412
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v36    # "option":I
    .end local v37    # "pending":Landroid/app/PendingIntent;
    :cond_25
    const-string/jumbo v53, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_27

    .line 413
    const-string/jumbo v53, "wifiap_plug_state_changed_option"

    const/16 v54, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 414
    .restart local v36    # "option":I
    if-nez v36, :cond_26

    .line 415
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Unplugged"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 417
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v50

    .line 418
    .restart local v50    # "wifiApState":I
    const/16 v53, 0xd

    move/from16 v0, v50

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v53, :cond_2

    .line 419
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 422
    .end local v50    # "wifiApState":I
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_26
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Plugged"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v53, :cond_2

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2

    .line 424
    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 437
    .end local v36    # "option":I
    :cond_27
    const-string/jumbo v53, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2f

    .line 438
    const-string/jumbo v53, "NUM"

    const/16 v54, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 439
    .local v4, "ClientNum":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-gez v4, :cond_28

    .line 441
    const/4 v4, 0x0

    .line 442
    :cond_28
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    move/from16 v0, v53

    if-le v4, v0, :cond_29

    .line 443
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    .line 445
    :cond_29
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "MaxClientNum1 = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    sget v55, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v53

    if-eqz v53, :cond_2a

    .line 449
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v53

    if-le v4, v0, :cond_2d

    .line 450
    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2a
    :goto_a
    if-nez v4, :cond_2b

    sget-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v53, :cond_2e

    .line 459
    :cond_2b
    if-lez v4, :cond_2c

    .line 460
    const/16 v53, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 462
    :cond_2c
    :goto_b
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 451
    :cond_2d
    sget v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v53

    if-ge v4, v0, :cond_2a

    .line 452
    sget-object v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v54, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 458
    :cond_2e
    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_b

    .line 463
    .end local v4    # "ClientNum":I
    :cond_2f
    const-string/jumbo v53, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_30

    .line 464
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 465
    :cond_30
    const-string/jumbo v53, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_32

    .line 466
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 468
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_31

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xc

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    .line 469
    :cond_31
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 471
    const-wide/16 v54, 0x1b58

    :try_start_5
    invoke-static/range {v54 .. v55}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 475
    :goto_c
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 477
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const/16 v53, 0x0

    const/16 v54, 0x1

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 472
    .end local v11    # "cr":Landroid/content/ContentResolver;
    :catch_4
    move-exception v13

    .line 473
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 479
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_32
    const-string/jumbo v53, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_34

    .line 480
    const-string/jumbo v53, "req_type"

    const/16 v54, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 481
    .local v42, "req_type":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "onreceive WIFI_ENABLE_WARNING req_type:"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/16 v53, 0xb

    move/from16 v0, v42

    move/from16 v1, v53

    if-ne v0, v1, :cond_33

    .line 483
    const/16 v53, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotExtenderModewarning(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 485
    :cond_33
    const/16 v53, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 487
    .end local v42    # "req_type":I
    :cond_34
    const-string/jumbo v53, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_35

    .line 488
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 490
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v53, 0x1

    sput-boolean v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 491
    new-instance v33, Landroid/os/Message;

    invoke-direct/range {v33 .. v33}, Landroid/os/Message;-><init>()V

    .line 492
    .restart local v33    # "msg":Landroid/os/Message;
    const/16 v53, 0xc5

    move/from16 v0, v53

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    .line 493
    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v43

    .local v43, "ret":I
    goto/16 :goto_0

    .line 528
    .end local v33    # "msg":Landroid/os/Message;
    .end local v43    # "ret":I
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_35
    const-string/jumbo v53, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 530
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v22

    .line 531
    .local v22, "isWifiSharingEnabled":Z
    if-eqz v22, :cond_3c

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_3c

    .line 532
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 533
    .local v26, "mManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3b

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_36

    .line 535
    const-string/jumbo v53, "SAMSUNG_HOTSPOT"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 537
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string/jumbo v54, "wifi_disconnect_do_not_show"

    const/16 v55, 0x0

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 538
    .local v21, "isDoNotShowAgain":I
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_3a

    .line 540
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_37

    .line 541
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning failed, mobile ap ON toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const v53, 0x7f0b0f9b

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    .line 543
    .local v46, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 544
    .local v47, "tv":Landroid/widget/TextView;
    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 545
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    .line 547
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    invoke-static/range {v55 .. v56}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 553
    :goto_d
    new-instance v31, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v31, "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 555
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 549
    .end local v31    # "menu_update":Landroid/content/Intent;
    :catch_5
    move-exception v16

    .line 550
    .local v16, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Error in putting off provider value"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 556
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v46    # "toast":Landroid/widget/Toast;
    .end local v47    # "tv":Landroid/widget/TextView;
    :cond_37
    const/16 v53, 0x1

    move/from16 v0, v21

    move/from16 v1, v53

    if-ne v0, v1, :cond_38

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_38

    .line 557
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Provisioning success, mobile ap ON toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const v53, 0x7f0b0f9a

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    .line 559
    .restart local v46    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 560
    .restart local v47    # "tv":Landroid/widget/TextView;
    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 561
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 563
    .end local v46    # "toast":Landroid/widget/Toast;
    .end local v47    # "tv":Landroid/widget/TextView;
    :cond_38
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Wi-fi got Disconnected before pop-up appears, Turn OFF MHS"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 565
    .restart local v52    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0xd

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_39

    .line 566
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v52 .. v54}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 568
    :cond_39
    new-instance v44, Landroid/content/Intent;

    invoke-direct/range {v44 .. v44}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v44, "startDialogIntent":Landroid/content/Intent;
    const-class v53, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 570
    const/high16 v53, 0x10000000

    move-object/from16 v0, v44

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    const-string/jumbo v53, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v53, "wifiap_warning_dialog_type"

    const/16 v54, 0x7

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 576
    .end local v44    # "startDialogIntent":Landroid/content/Intent;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_3a
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 577
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 580
    .end local v21    # "isDoNotShowAgain":I
    :cond_3b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 581
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Start provisioning Wifi Sharing"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 585
    .end local v26    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_3c
    const-string/jumbo v53, "VZW"

    sget-object v54, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3e

    .line 586
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 587
    .restart local v26    # "mManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_3d

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3d

    .line 588
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Wifi Sharing ON but provision failed toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const v53, 0x7f0b0f9b

    const/16 v54, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    .line 590
    .restart local v46    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v53

    const v54, 0x102000b

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 591
    .restart local v47    # "tv":Landroid/widget/TextView;
    const/16 v53, 0x11

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 592
    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    .line 594
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string/jumbo v54, "wifi_ap_wifi_sharing"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    invoke-static/range {v55 .. v56}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 599
    :goto_e
    new-instance v31, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .restart local v31    # "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 601
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 596
    .end local v31    # "menu_update":Landroid/content/Intent;
    :catch_6
    move-exception v16

    .line 597
    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Error in putting off provider value"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 603
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v46    # "toast":Landroid/widget/Toast;
    .end local v47    # "tv":Landroid/widget/TextView;
    :cond_3d
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Showing Wi-Fi Disconnect toast"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v53, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v20, "info_intent":Landroid/content/Intent;
    const-string/jumbo v53, "info_type"

    const/16 v54, 0x1e

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 608
    .end local v20    # "info_intent":Landroid/content/Intent;
    .end local v26    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_3e
    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 609
    const-string/jumbo v53, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 610
    .restart local v26    # "mManager":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 611
    const-string/jumbo v53, "WifiApBroadcastReceiver"

    const-string/jumbo v54, "Start Provisioning as Provisioning is needed"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v53, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 145
    .end local v22    # "isWifiSharingEnabled":Z
    .end local v26    # "mManager":Landroid/net/wifi/WifiManager;
    .restart local v9    # "apState":I
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    :catch_7
    move-exception v16

    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    goto/16 :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method showLimitDataReachNotification(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 717
    const v6, 0x1080904

    .line 718
    .local v6, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0fb6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 719
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b1adf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 720
    .local v8, "message":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 723
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 724
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 725
    .local v7, "mNotiBuilder":Landroid/app/Notification$Builder;
    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 728
    const v1, 0x106005c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 725
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 730
    const-string/jumbo v1, "status"

    .line 725
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 735
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 736
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v5, 0x7f0b0fb5

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 716
    return-void
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0fb4

    const/4 v6, 0x0

    .line 696
    const v1, 0x108008a

    .line 697
    .local v1, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 702
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 703
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v2, p1, v4, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 705
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 706
    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 707
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 695
    return-void
.end method
