.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field private static mIface:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static mMaxClientNum:I

.field private static mTimeoutSetting:I

.field private static mWifiSharing:Ljava/lang/String;


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 38
    const-string/jumbo v0, "GATE"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 42
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 43
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 45
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 46
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    .line 83
    sput v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 88
    const-string/jumbo v0, "not_support"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    .line 89
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 90
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "mRvfMode":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 726
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 727
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 728
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 729
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 731
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 626
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

    .line 770
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 771
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 772
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi Manager is null, returning mobile ap not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v4

    .line 775
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 776
    .local v0, "mWifiApState":I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 777
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 778
    :cond_2
    return v4
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 734
    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Provisioning.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    return v3

    .line 736
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v3

    .line 741
    :cond_1
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 744
    const v2, 0x1070036

    .line 743
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "mProvisionApp":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 746
    const/4 v1, 0x1

    return v1

    .line 747
    :cond_3
    return v3
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 758
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 759
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 760
    return v4

    .line 761
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 762
    .local v1, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 763
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

    .line 764
    const/4 v2, 0x1

    return v2

    .line 766
    :cond_1
    return v4
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 751
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 752
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 753
    const/4 v1, 0x0

    return v1

    .line 754
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
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 618
    return-void
.end method

.method private setRvfMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 714
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 715
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 716
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 713
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

    .line 630
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

    .line 631
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 632
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v6, "extra_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 633
    .local v0, "extra_type":I
    const-string/jumbo v6, "req_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 635
    .local v1, "req_type":I
    if-eqz v5, :cond_3

    .line 636
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 637
    .local v4, "wifiApState":I
    if-ne p2, v10, :cond_1

    .line 639
    if-nez v1, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 643
    :cond_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    .line 644
    add-int v6, v0, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v0, v10, :cond_1

    .line 645
    return-void

    .line 648
    :cond_1
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 649
    .local v3, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v3, :cond_2

    .line 650
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 652
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    .local v2, "startDialogIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 654
    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const-string/jumbo v6, "extra_type"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 629
    .end local v2    # "startDialogIntent":Landroid/content/Intent;
    .end local v3    # "statusBar":Landroid/app/StatusBarManager;
    .end local v4    # "wifiApState":I
    :cond_3
    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 598
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 601
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 597
    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 608
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 611
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 612
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string/jumbo v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 607
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 679
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0b0da3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 677
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v42

    .line 104
    .local v42, "userID":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "onReceive: action "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " userID :"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v5, :cond_0

    const/16 v46, 0x64

    move/from16 v0, v42

    move/from16 v1, v46

    if-lt v0, v1, :cond_1

    const/16 v46, 0xc8

    move/from16 v0, v42

    move/from16 v1, v46

    if-gt v0, v1, :cond_1

    .line 106
    :cond_0
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "do nothing, action is null or Knox userID:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_1
    const-string/jumbo v46, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 111
    const-string/jumbo v46, "wifi_state"

    const/16 v47, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 112
    .local v9, "apState":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    packed-switch v9, :pswitch_data_0

    .line 101
    .end local v9    # "apState":I
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 116
    .restart local v9    # "apState":I
    :pswitch_1
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 119
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_3

    .line 120
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    const-string/jumbo v46, "ATT"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 132
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    .line 133
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 135
    :cond_4
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 138
    .local v11, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v46, "wifi_ap_saved_state"

    move-object/from16 v0, v46

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    .line 139
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 140
    const-string/jumbo v46, "wifi_ap_saved_state"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 147
    .end local v11    # "cr":Landroid/content/ContentResolver;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_6

    .line 148
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 151
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string/jumbo v47, "PROVISIONING_RESULT"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 152
    .local v39, "tempProvisonResult":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "value of provisioning result is  and flag value "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_7

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-eqz v46, :cond_a

    .line 186
    :cond_7
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 189
    :cond_8
    :goto_2
    :pswitch_2
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v46, :cond_9

    .line 190
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 191
    .local v45, "wm":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_9

    .line 192
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v46

    if-eqz v46, :cond_9

    .line 193
    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 197
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 199
    .local v17, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v46, "PROVISIONING_RESULT"

    const/16 v47, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    const-string/jumbo v46, "wlan0"

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    .line 208
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_timeout_setting"

    invoke-static/range {v46 .. v47}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v46

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    .line 209
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_TIMEOUT is "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v12

    .line 211
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "WIFI_AP_TIMEOUT is not set. This is used at first time"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_timeout_setting"

    sget v48, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    sget v46, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    goto/16 :goto_0

    .line 154
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v46

    if-nez v46, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v46, v0

    if-nez v46, :cond_7

    const-string/jumbo v46, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_7

    .line 156
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 157
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    .line 158
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_c

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 160
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const-string/jumbo v46, "vzw_provision_result"

    const/16 v47, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 161
    .local v36, "provisionValue":I
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v46, :cond_b

    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "provisionValue.."

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_b
    packed-switch v36, :pswitch_data_1

    goto/16 :goto_2

    .line 170
    :pswitch_3
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 166
    :pswitch_4
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 167
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 174
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v36    # "provisionValue":I
    :cond_c
    if-nez v39, :cond_d

    .line 175
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 176
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 179
    :cond_d
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    .line 234
    .end local v39    # "tempProvisonResult":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :pswitch_5
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 235
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    if-eqz v45, :cond_2

    .line 236
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 237
    .local v28, "msg":Landroid/os/Message;
    const/16 v46, 0x4d

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 238
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v46, "bigdata"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string/jumbo v46, "feature"

    const-string/jumbo v47, "MHSI"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .line 243
    .local v25, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v29, "CustomSSID"

    .line 244
    .local v29, "nameOfHotspot":Ljava/lang/String;
    const-string/jumbo v7, "All"

    .line 246
    .local v7, "allowedDevice":Ljava/lang/String;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v46, v0

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_e

    const-string/jumbo v7, "Only"

    .line 248
    :cond_e
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Android"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_f

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Verizon"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_f

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Samsung"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_f

    .line 249
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Galaxy"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    .line 248
    if-nez v46, :cond_f

    .line 249
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "SM-"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    .line 248
    if-eqz v46, :cond_10

    .line 249
    :cond_f
    const-string/jumbo v29, "DefaultSSID"

    .line 251
    :cond_10
    const-string/jumbo v27, ""

    .line 252
    .local v27, "mhsData":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 256
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 258
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Bigdata logging "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string/jumbo v46, "data"

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, v28

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 262
    const/16 v46, 0x0

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    .line 263
    const/16 v46, -0x1

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    .line 264
    const-string/jumbo v46, ""

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    .line 265
    const-string/jumbo v46, ""

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    goto/16 :goto_0

    .line 269
    .end local v7    # "allowedDevice":Ljava/lang/String;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v25    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "mhsData":Ljava/lang/String;
    .end local v28    # "msg":Landroid/os/Message;
    .end local v29    # "nameOfHotspot":Ljava/lang/String;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :pswitch_6
    const/16 v46, 0x0

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 270
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->setRvfMode(Landroid/content/Context;I)V

    .line 271
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 274
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_2

    .line 275
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .end local v9    # "apState":I
    :cond_11
    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1d

    .line 284
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 286
    .local v31, "option":I
    if-nez v31, :cond_17

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 289
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v46

    if-eqz v46, :cond_12

    const-string/jumbo v46, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 290
    return-void

    .line 292
    :cond_12
    :try_start_2
    const-string/jumbo v46, "wifi_ap_plugged_type"

    move-object/from16 v0, v46

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v33

    .line 296
    .local v33, "pluggedType":I
    :goto_3
    const-string/jumbo v46, "TMO"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_14

    .line 297
    const-string/jumbo v46, "NEWCO"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    .line 296
    :goto_4
    if-eqz v46, :cond_13

    .line 298
    if-nez v33, :cond_2

    .line 299
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v35

    .line 300
    .local v35, "powermode_value":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "ALARM_START : set "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " sec"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz v35, :cond_15

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v18, v46, v48

    .line 304
    .local v18, "expireTime":J
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 308
    .local v32, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 309
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v46, 0x0

    move/from16 v0, v46

    move-wide/from16 v1, v18

    move-object/from16 v3, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 311
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 312
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 293
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v18    # "expireTime":J
    .end local v32    # "pending":Landroid/app/PendingIntent;
    .end local v33    # "pluggedType":I
    .end local v35    # "powermode_value":I
    :catch_1
    move-exception v12

    .line 294
    .restart local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v33, 0x0

    .restart local v33    # "pluggedType":I
    goto/16 :goto_3

    .line 296
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_14
    const/16 v46, 0x1

    goto/16 :goto_4

    .line 314
    .restart local v35    # "powermode_value":I
    :cond_15
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_16

    .line 315
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 319
    .restart local v32    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 320
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 322
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v32    # "pending":Landroid/app/PendingIntent;
    :cond_16
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 325
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v33    # "pluggedType":I
    .end local v35    # "powermode_value":I
    :cond_17
    const/16 v46, 0x4

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_18

    .line 326
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v46, :cond_2

    .line 328
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 331
    :cond_18
    const/16 v46, 0x1

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_1c

    .line 332
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_EXPIRE"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 334
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 335
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 338
    const-string/jumbo v46, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PowerManager;

    .line 339
    .local v34, "pm":Landroid/os/PowerManager;
    const-string/jumbo v46, "MobileAPCloseService"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v47

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    .line 340
    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    if-eqz v24, :cond_19

    .line 342
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 348
    :cond_19
    :goto_5
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 350
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v43

    .line 351
    .local v43, "wifiApState":I
    const/16 v44, 0x0

    .line 352
    .local v44, "wifiSavedState":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v35

    .line 354
    .restart local v35    # "powermode_value":I
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 355
    .restart local v28    # "msg":Landroid/os/Message;
    const/16 v46, 0x3

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 356
    const/16 v30, 0x0

    .line 358
    .local v30, "num":I
    :try_start_4
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v30

    .line 362
    :goto_6
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "powermode_value = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-nez v30, :cond_1b

    const/16 v46, 0xd

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_1b

    if-eqz v35, :cond_1b

    .line 364
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "--> ap disable"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 366
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1a

    .line 367
    const v46, 0x7f0b0da5

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    .line 369
    :cond_1a
    const-string/jumbo v46, "ATT"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1b

    .line 370
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    .line 388
    :cond_1b
    if-eqz v24, :cond_2

    .line 390
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 391
    const/16 v24, 0x0

    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    goto/16 :goto_0

    .line 343
    .end local v28    # "msg":Landroid/os/Message;
    .end local v30    # "num":I
    .end local v35    # "powermode_value":I
    .end local v43    # "wifiApState":I
    .end local v44    # "wifiSavedState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    :catch_2
    move-exception v15

    .line 344
    .local v15, "e":Ljava/lang/Throwable;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 359
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v28    # "msg":Landroid/os/Message;
    .restart local v30    # "num":I
    .restart local v35    # "powermode_value":I
    .restart local v43    # "wifiApState":I
    .restart local v44    # "wifiSavedState":I
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    :catch_3
    move-exception v13

    .line 360
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_6

    .line 392
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v15

    .line 393
    .restart local v15    # "e":Ljava/lang/Throwable;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Cannot release wake lock ~~"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v24    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v28    # "msg":Landroid/os/Message;
    .end local v30    # "num":I
    .end local v34    # "pm":Landroid/os/PowerManager;
    .end local v35    # "powermode_value":I
    .end local v43    # "wifiApState":I
    .end local v44    # "wifiSavedState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1c
    const/16 v46, 0x2

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    .line 397
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_STOP"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v46, :cond_2

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_2

    .line 399
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 402
    .restart local v32    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 403
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 404
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 407
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v31    # "option":I
    .end local v32    # "pending":Landroid/app/PendingIntent;
    :cond_1d
    const-string/jumbo v46, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1f

    .line 408
    const-string/jumbo v46, "wifiap_plug_state_changed_option"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 409
    .restart local v31    # "option":I
    if-nez v31, :cond_1e

    .line 410
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Unplugged"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 412
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v43

    .line 413
    .restart local v43    # "wifiApState":I
    const/16 v46, 0xd

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v46, :cond_2

    .line 414
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 417
    .end local v43    # "wifiApState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1e
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Plugged"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v46, :cond_2

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_2

    .line 419
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 432
    .end local v31    # "option":I
    :cond_1f
    const-string/jumbo v46, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_27

    .line 433
    const-string/jumbo v46, "NUM"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 434
    .local v4, "ClientNum":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-gez v4, :cond_20

    .line 436
    const/4 v4, 0x0

    .line 437
    :cond_20
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    move/from16 v0, v46

    if-le v4, v0, :cond_21

    .line 438
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    .line 440
    :cond_21
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "MaxClientNum1 = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_22

    .line 444
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v46

    if-le v4, v0, :cond_25

    .line 445
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_22
    :goto_7
    if-nez v4, :cond_23

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_26

    .line 454
    :cond_23
    if-lez v4, :cond_24

    .line 455
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 457
    :cond_24
    :goto_8
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 446
    :cond_25
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v46

    if-ge v4, v0, :cond_22

    .line 447
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 453
    :cond_26
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_8

    .line 458
    .end local v4    # "ClientNum":I
    :cond_27
    const-string/jumbo v46, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_28

    .line 459
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 460
    :cond_28
    const-string/jumbo v46, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_29

    .line 461
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 463
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 464
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 466
    const-wide/16 v46, 0x5dc

    :try_start_6
    invoke-static/range {v46 .. v47}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 470
    :goto_9
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 471
    const/16 v46, 0x0

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 467
    :catch_5
    move-exception v14

    .line 468
    .local v14, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 473
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_29
    const-string/jumbo v46, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2a

    .line 474
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "onreceive WIFI_ENABLE_WARNING"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/16 v46, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 476
    :cond_2a
    const-string/jumbo v46, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2b

    .line 477
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 479
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 480
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 481
    .restart local v28    # "msg":Landroid/os/Message;
    const/16 v46, 0xc5

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 482
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v37

    .local v37, "ret":I
    goto/16 :goto_0

    .line 483
    .end local v28    # "msg":Landroid/os/Message;
    .end local v37    # "ret":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2b
    const-string/jumbo v46, "reset_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2d

    .line 485
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0xa

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 10"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_2c

    .line 488
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 489
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 490
    .restart local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v46, "wifi_disconnect_do_not_show"

    const/16 v47, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 492
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :catch_6
    move-exception v16

    .line 493
    .local v16, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2d
    const-string/jumbo v46, "enable_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2e

    .line 496
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "vzw calling enable method "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-boolean v46, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v46, :cond_2

    .line 498
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 499
    .local v23, "mManager":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 501
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_2e
    const-string/jumbo v46, "disable_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2f

    .line 502
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "vzw calling disable method "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-boolean v46, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v46, :cond_2

    .line 504
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 505
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 507
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_2f
    const-string/jumbo v46, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 509
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v22

    .line 510
    .local v22, "isWifiSharingEnabled":Z
    if-eqz v22, :cond_36

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_36

    .line 511
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 512
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_35

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_30

    .line 514
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 516
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string/jumbo v47, "wifi_disconnect_do_not_show"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 517
    .local v21, "isDoNotShowAgain":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_34

    .line 519
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_31

    .line 520
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning failed, mobile ap ON toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const v46, 0x7f0b0d8a

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 522
    .local v40, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 523
    .local v41, "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 524
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    .line 526
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    .line 532
    :goto_a
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v26, "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 528
    .end local v26    # "menu_update":Landroid/content/Intent;
    :catch_7
    move-exception v16

    .line 529
    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 535
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_31
    const/16 v46, 0x1

    move/from16 v0, v21

    move/from16 v1, v46

    if-ne v0, v1, :cond_32

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_32

    .line 536
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning success, mobile ap ON toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const v46, 0x7f0b0d89

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 538
    .restart local v40    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 539
    .restart local v41    # "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 540
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 542
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_32
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Wi-fi got Disconnected before pop-up appears, Turn OFF MHS"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 544
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_33

    .line 545
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 547
    :cond_33
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v38, "startDialogIntent":Landroid/content/Intent;
    const-class v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 549
    const/high16 v46, 0x10000000

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 550
    const-string/jumbo v46, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string/jumbo v46, "wifiap_warning_dialog_type"

    const/16 v47, 0x7

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 555
    .end local v38    # "startDialogIntent":Landroid/content/Intent;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_34
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 556
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 559
    .end local v21    # "isDoNotShowAgain":I
    :cond_35
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 560
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Start provisioning Wifi Sharing"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 564
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_36
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 565
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 566
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_37

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_37

    .line 567
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Wifi Sharing ON but provision failed toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const v46, 0x7f0b0d8a

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 569
    .restart local v40    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 570
    .restart local v41    # "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 571
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    .line 573
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    .line 578
    :goto_b
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .restart local v26    # "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 575
    .end local v26    # "menu_update":Landroid/content/Intent;
    :catch_8
    move-exception v16

    .line 576
    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 582
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_37
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Showing Wi-Fi Disconnect toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v20, "info_intent":Landroid/content/Intent;
    const-string/jumbo v46, "info_type"

    const/16 v47, 0x1e

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 587
    .end local v20    # "info_intent":Landroid/content/Intent;
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_38
    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 588
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 589
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 590
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Start Provisioning as Provisioning is needed"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 142
    .end local v22    # "isWifiSharingEnabled":Z
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    .restart local v9    # "apState":I
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    :catch_9
    move-exception v16

    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    goto/16 :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0da3

    const/4 v6, 0x0

    .line 663
    const v1, 0x108008a

    .line 664
    .local v1, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 669
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 670
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v2, p1, v4, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 672
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 673
    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 674
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 662
    return-void
.end method
