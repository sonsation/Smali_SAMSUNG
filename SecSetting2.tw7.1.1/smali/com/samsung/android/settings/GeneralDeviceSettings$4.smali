.class Lcom/samsung/android/settings/GeneralDeviceSettings$4;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GeneralDeviceSettings;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    .line 603
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "LanguageAndInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 605
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 606
    const-string/jumbo v8, "device_info_language_settings"

    .line 605
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 607
    .local v3, "languageSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 608
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 695
    .end local v3    # "languageSettingPref":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const-string/jumbo v7, "DateAndTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 610
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 611
    const-string/jumbo v8, "device_info_date_time_settings"

    .line 610
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 612
    .local v1, "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 613
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 614
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 615
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 616
    .end local v1    # "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 617
    const-string/jumbo v7, "ReportDiagnosticInfoOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 616
    if-eqz v7, :cond_a

    .line 618
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 619
    .local v2, "isChecked":Z
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 620
    if-eqz v2, :cond_5

    .line 622
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 624
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 625
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 624
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 627
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 628
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 631
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 632
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 633
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 632
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 636
    :cond_7
    if-eqz v2, :cond_9

    .line 637
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 638
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 641
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 642
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 643
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 642
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 646
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 648
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 649
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 648
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 652
    .end local v2    # "isChecked":Z
    :cond_a
    const-string/jumbo v7, "MarketingInformation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 653
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 654
    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    .line 653
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 655
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    .line 656
    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    .line 655
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 657
    const-string/jumbo v8, "Disable"

    .line 655
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 653
    if-eqz v7, :cond_c

    .line 659
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 661
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 663
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 664
    const-string/jumbo v8, "marketing_information"

    .line 663
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 665
    .local v4, "marketingInfoPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 666
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 667
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 670
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 672
    .end local v4    # "marketingInfoPref":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string/jumbo v7, "Reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 673
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "reset_preference"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 674
    .local v5, "resetPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 675
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 676
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 677
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 678
    .end local v5    # "resetPref":Landroid/preference/PreferenceScreen;
    :cond_10
    const-string/jumbo v7, "SamsungAdvertisingID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_SupportSamsungAdId"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 680
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 681
    const-string/jumbo v8, "samsung_ad_id"

    .line 680
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 682
    .local v0, "advertisingPreference":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 683
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 684
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ADID"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 687
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 690
    .end local v0    # "advertisingPreference":Landroid/preference/PreferenceScreen;
    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ADID"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 692
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
