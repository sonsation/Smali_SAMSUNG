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
    .line 548
    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    .line 552
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "LanguageAndInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 554
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 555
    const-string/jumbo v8, "device_info_language_settings"

    .line 554
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 556
    .local v3, "languageSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 557
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 640
    .end local v3    # "languageSettingPref":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const-string/jumbo v7, "DateAndTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 559
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 560
    const-string/jumbo v8, "device_info_date_time_settings"

    .line 559
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 561
    .local v1, "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 562
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 564
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 565
    .end local v1    # "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 566
    const-string/jumbo v7, "ReportDiagnosticInfoOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 565
    if-eqz v7, :cond_a

    .line 567
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 568
    .local v2, "isChecked":Z
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 569
    if-eqz v2, :cond_5

    .line 571
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 573
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 574
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 573
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 576
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 577
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 580
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 581
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 582
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 581
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 585
    :cond_7
    if-eqz v2, :cond_9

    .line 586
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 587
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 590
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 591
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 592
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 591
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 595
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 597
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 598
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 597
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 601
    .end local v2    # "isChecked":Z
    :cond_a
    const-string/jumbo v7, "MarketingInformation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 602
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 603
    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    .line 602
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 604
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    .line 605
    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    .line 604
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 606
    const-string/jumbo v8, "Disable"

    .line 604
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 602
    if-eqz v7, :cond_c

    .line 608
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 610
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 612
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 613
    const-string/jumbo v8, "marketing_information"

    .line 612
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 614
    .local v4, "marketingInfoPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 615
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 616
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 619
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 621
    .end local v4    # "marketingInfoPref":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string/jumbo v7, "Reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 622
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 623
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 625
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 626
    const-string/jumbo v8, "reset_preference"

    .line 625
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 627
    .local v5, "resetPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 628
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 629
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 630
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 632
    .end local v5    # "resetPref":Landroid/preference/PreferenceScreen;
    :cond_12
    const-string/jumbo v7, "SamsungAdvertisingID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 633
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 634
    const-string/jumbo v8, "samsung_ad_id"

    .line 633
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 635
    .local v0, "advertisingPreference":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 636
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 637
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 638
    :cond_13
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
