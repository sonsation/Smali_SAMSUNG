.class Lcom/samsung/android/settings/WirelessSettings$7;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/WirelessSettings;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1458
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "NearbyDeviceScanning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1460
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "nearby_scanning_setting_category"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1461
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1462
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1463
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1517
    :cond_1
    :goto_0
    return-void

    .line 1464
    :cond_2
    const-string/jumbo v5, "Printing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1465
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "print_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1466
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1467
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1468
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1469
    :cond_4
    const-string/jumbo v5, "MirrorLinkSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1470
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "mirror_link_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1471
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1472
    :cond_5
    const-string/jumbo v5, "DownloadBooster"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1473
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "smart_bonding_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1474
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1475
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1476
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1477
    :cond_7
    const-string/jumbo v5, "VPN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1478
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "vpn_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1479
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1480
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1481
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1482
    :cond_9
    const-string/jumbo v5, "HDMIMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1483
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1484
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "param":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1486
    .local v4, "targetMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 1487
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1488
    move v4, v1

    .line 1493
    :cond_a
    if-gez v4, :cond_c

    .line 1494
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "MoreConnectionSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1496
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1486
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1498
    :cond_c
    const-string/jumbo v5, "persist.service.dex.hdmi"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1499
    .local v0, "currentMode":I
    if-ne v0, v4, :cond_d

    .line 1500
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1503
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1505
    :cond_d
    const-string/jumbo v5, "persist.service.dex.hdmi"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1507
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 1509
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1512
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
