.class Lcom/samsung/android/settings/WirelessSettings$8;
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
    .line 1566
    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1570
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 1571
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "NearbyDeviceScanning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1572
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "nearby_scanning_setting_category"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1573
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1574
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1575
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1634
    :cond_1
    :goto_0
    return-void

    .line 1576
    :cond_2
    const-string/jumbo v5, "Printing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1577
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "print_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1578
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1579
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1580
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1581
    :cond_4
    const-string/jumbo v5, "MirrorLinkSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1582
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "mirror_link_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1583
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1584
    :cond_5
    const-string/jumbo v5, "DownloadBooster"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1585
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "smart_bonding_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1586
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "smart_bonding_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1587
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1588
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1589
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1591
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1592
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1594
    :cond_8
    const-string/jumbo v5, "VPN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1595
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "vpn_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1596
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1597
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1598
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1599
    :cond_a
    const-string/jumbo v5, "HDMIMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1600
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1601
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 1602
    .local v2, "param":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1603
    .local v4, "targetMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 1604
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1605
    move v4, v1

    .line 1610
    :cond_b
    if-gez v4, :cond_d

    .line 1611
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "MoreConnectionSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1613
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1603
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1615
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdmi_mode"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1616
    .local v0, "currentMode":I
    if-ne v0, v4, :cond_e

    .line 1617
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1620
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1622
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdmi_mode"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1624
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 1626
    :cond_f
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1629
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$8;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
