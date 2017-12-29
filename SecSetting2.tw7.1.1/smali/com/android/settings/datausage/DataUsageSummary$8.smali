.class Lcom/android/settings/datausage/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageSummary;

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 32

    .prologue
    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v23

    .line 1582
    .local v23, "stateId":Ljava/lang/String;
    const-string/jumbo v27, "DataSaver"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataSaverPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1584
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1586
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1840
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "opera_max_china_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 1842
    .local v19, "sDataCompressionState":I
    const/16 v20, 0x0

    .line 1843
    .local v20, "sSimInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-eqz v27, :cond_3

    const-string/jumbo v27, "SetUsedData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3f

    .line 1868
    .end local v20    # "sSimInfo":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v27, "DataUsageDetail"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_44

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    if-eqz v27, :cond_43

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1871
    if-eqz v20, :cond_4

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageDetail"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1997
    .end local v19    # "sDataCompressionState":I
    :cond_5
    :goto_2
    sget-boolean v27, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v27, :cond_6

    .line 1998
    const-string/jumbo v27, "DataUsageNotificationsOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_60

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_usage_reminder"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 2000
    .local v8, "dataUsageReminder":Landroid/preference/SwitchPreference;
    if-eqz v8, :cond_5f

    .line 2001
    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_5d

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2036
    .end local v8    # "dataUsageReminder":Landroid/preference/SwitchPreference;
    :cond_6
    :goto_3
    return-void

    .line 1587
    :cond_7
    const-string/jumbo v27, "MobileDataOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v12

    .line 1589
    .local v12, "mobileDataSate":Z
    if-eqz v12, :cond_9

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOn"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1593
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1598
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 1600
    .local v21, "screen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 1601
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1605
    .local v18, "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOn"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1614
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1603
    .end local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :cond_b
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .restart local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    goto :goto_5

    .line 1610
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1616
    .end local v12    # "mobileDataSate":Z
    .end local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v21    # "screen":Landroid/preference/PreferenceScreen;
    :cond_d
    const-string/jumbo v27, "MobileDataOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v12

    .line 1618
    .restart local v12    # "mobileDataSate":Z
    if-nez v12, :cond_f

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOff"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1622
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1627
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 1629
    .restart local v21    # "screen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 1630
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1634
    .restart local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOff"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1642
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1643
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1632
    .end local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :cond_11
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .restart local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    goto :goto_8

    .line 1638
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1645
    .end local v12    # "mobileDataSate":Z
    .end local v18    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v21    # "screen":Landroid/preference/PreferenceScreen;
    :cond_13
    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_14

    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 1646
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 1652
    .restart local v21    # "screen":Landroid/preference/PreferenceScreen;
    const/16 v22, -0x1

    .line 1653
    .local v22, "simCardInfoParam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-lez v27, :cond_15

    .line 1655
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1661
    :cond_15
    :goto_a
    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "EmSettingsManager : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " sim Param : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_1d

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1c

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 1666
    if-ltz v22, :cond_1a

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1670
    .local v13, "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :goto_b
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    invoke-virtual {v13}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_1c

    .line 1671
    invoke-virtual {v13, v10}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    .line 1672
    .local v14, "pref":Landroid/preference/Preference;
    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    instance-of v0, v14, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v27, v0

    if-nez v27, :cond_17

    .line 1673
    :cond_16
    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    instance-of v0, v14, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v27, v0

    .line 1672
    if-eqz v27, :cond_1b

    .line 1674
    :cond_17
    invoke-virtual {v14}, Landroid/preference/Preference;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_19

    .line 1677
    if-ltz v22, :cond_18

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1681
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1682
    return-void

    .line 1656
    .end local v10    # "i":I
    .end local v13    # "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v14    # "pref":Landroid/preference/Preference;
    :catch_0
    move-exception v9

    .line 1657
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NumberFormatException : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/16 v22, -0x1

    goto/16 :goto_a

    .line 1669
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .restart local v13    # "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    goto/16 :goto_b

    .line 1670
    .restart local v10    # "i":I
    .restart local v14    # "pref":Landroid/preference/Preference;
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    .line 1687
    .end local v10    # "i":I
    .end local v13    # "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v14    # "pref":Landroid/preference/Preference;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1691
    :cond_1d
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1692
    .restart local v13    # "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_d
    invoke-virtual {v13}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_21

    .line 1693
    invoke-virtual {v13, v10}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    .line 1694
    .restart local v14    # "pref":Landroid/preference/Preference;
    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1e

    instance-of v0, v14, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v27, v0

    if-nez v27, :cond_1f

    .line 1695
    :cond_1e
    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    instance-of v0, v14, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v27, v0

    .line 1694
    if-eqz v27, :cond_20

    .line 1696
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1692
    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1699
    .end local v14    # "pref":Landroid/preference/Preference;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_22

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1703
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1705
    .end local v10    # "i":I
    .end local v13    # "mobileSectionCategory":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v21    # "screen":Landroid/preference/PreferenceScreen;
    .end local v22    # "simCardInfoParam":I
    :cond_23
    const-string/jumbo v27, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alert_at_warning"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/datausage/AlertAtWarningPreference;

    .line 1707
    .local v15, "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    if-eqz v15, :cond_2

    .line 1708
    invoke-virtual {v15}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1713
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_25

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1718
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1721
    .end local v15    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    :cond_26
    const-string/jumbo v27, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alert_at_warning"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/datausage/AlertAtWarningPreference;

    .line 1723
    .restart local v15    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    if-eqz v15, :cond_2

    .line 1724
    invoke-virtual {v15}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v27

    if-nez v27, :cond_27

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1729
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_28

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1734
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1737
    .end local v15    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    :cond_29
    const-string/jumbo v27, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    if-eqz v27, :cond_2c

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1744
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1749
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1752
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1756
    :cond_2d
    const-string/jumbo v27, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    if-eqz v27, :cond_30

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-nez v27, :cond_2e

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOf"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1763
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_2f

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOf"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1768
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1771
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1775
    :cond_31
    const-string/jumbo v27, "WiFiDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v27

    .line 1777
    const-string/jumbo v28, "wifi_data_usage"

    .line 1776
    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/DataUsagePreference;

    .line 1778
    .local v16, "pref":Lcom/android/settings/datausage/DataUsagePreference;
    if-eqz v16, :cond_33

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsagePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_32

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WiFiDataUsage"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1784
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1786
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WiFiDataUsage"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1790
    .end local v16    # "pref":Lcom/android/settings/datausage/DataUsagePreference;
    :cond_34
    const-string/jumbo v27, "MobiledataInternationalDataRoaming"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_37

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_36

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_35

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1796
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1798
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    .line 1799
    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    .line 1798
    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1803
    :cond_37
    const-string/jumbo v27, "DisplayUnits"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3c

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get7(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_3b

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v27

    if-eqz v27, :cond_3a

    .line 1806
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v27

    if-nez v27, :cond_39

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap1(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_38

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1811
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1813
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1817
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_0

    .line 1820
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1823
    :cond_3c
    const-string/jumbo v27, "RestrictWiFiNetwork"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v27

    .line 1825
    const-string/jumbo v28, "network_restrictions"

    .line 1824
    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    .line 1826
    .local v17, "pref":Lcom/android/settings/datausage/NetworkRestrictionsPreference;
    if-eqz v17, :cond_3e

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/NetworkRestrictionsPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "RestrictWiFiNetworks"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1832
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1834
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "RestrictWiFiNetworks"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1844
    .end local v17    # "pref":Lcom/android/settings/datausage/NetworkRestrictionsPreference;
    .restart local v19    # "sDataCompressionState":I
    .restart local v20    # "sSimInfo":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1845
    .local v24, "tabId":Ljava/lang/String;
    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "tabId is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    if-nez v24, :cond_40

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1851
    return-void

    .line 1853
    :cond_40
    const-string/jumbo v27, "2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabCount()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_41

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabViewAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->performClick()Z

    .line 1855
    const-string/jumbo v27, "DataUsageSummary"

    const-string/jumbo v28, "Click Tab 2"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const-string/jumbo v20, "SIM2"

    .local v20, "sSimInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 1857
    .local v20, "sSimInfo":Ljava/lang/String;
    :cond_41
    const-string/jumbo v27, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_42

    .line 1858
    const-string/jumbo v20, "SIM1"

    .local v20, "sSimInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 1861
    .local v20, "sSimInfo":Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1864
    return-void

    .line 1877
    .end local v20    # "sSimInfo":Ljava/lang/String;
    .end local v24    # "tabId":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1879
    :cond_44
    const-string/jumbo v27, "ManageAppData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_46

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "restrict_app_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_45

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ManageAppData"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1884
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1885
    :cond_46
    const-string/jumbo v27, "WlanUsageView"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_48

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "wifi_data_usage"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_47

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WlanUsageView"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1890
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1891
    :cond_48
    const-string/jumbo v27, "NetworkRestrictView"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4a

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "network_restrictions"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_49

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "NetworkRestrictView"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1896
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1897
    :cond_4a
    const-string/jumbo v27, "DataUsageLimitSettings"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4d

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "billing_preference_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_4c

    .line 1900
    if-eqz v20, :cond_4b

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageLimitSettings"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1905
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1906
    :cond_4d
    const-string/jumbo v27, "UsedDataPopup"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4e

    const-string/jumbo v27, "SetUsedData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_56

    .line 1907
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-nez v27, :cond_50

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_4f

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1914
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1916
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataNumber"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1917
    .local v11, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUnit"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1919
    .local v26, "unit":Ljava/lang/String;
    if-eqz v11, :cond_51

    if-nez v26, :cond_52

    .line 1920
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Valid"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1926
    :cond_52
    const/4 v4, 0x0

    .line 1927
    .local v4, "bytes":F
    :try_start_1
    const-string/jumbo v27, "MB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_55

    .line 1928
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1933
    :cond_53
    :goto_e
    new-instance v25, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    .line 1934
    .local v25, "trafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 1935
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 1936
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 1937
    .local v5, "bytesString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1938
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1939
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "data_used_by_check_time"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1938
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1941
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "check_time"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1940
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1943
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "middle_real_value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v30

    .line 1942
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_54

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Already set"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1950
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1951
    .end local v5    # "bytesString":Ljava/lang/String;
    .end local v6    # "currentTime":J
    .end local v25    # "trafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    :catch_1
    move-exception v9

    .line 1952
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v27, "DataUsageSummary"

    const-string/jumbo v28, "could not persist insert byte"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Valid"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1929
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_55
    :try_start_2
    const-string/jumbo v27, "GB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_53

    .line 1930
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 1931
    const/high16 v27, 0x44800000    # 1024.0f

    mul-float v4, v4, v27

    goto/16 :goto_e

    .line 1960
    .end local v4    # "bytes":F
    .end local v11    # "method":Ljava/lang/String;
    .end local v26    # "unit":Ljava/lang/String;
    :cond_56
    const-string/jumbo v27, "DataCompressionOn"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_59

    .line 1961
    if-nez v19, :cond_58

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_57

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyON"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1966
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_saving_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1970
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyON"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1974
    :cond_59
    const-string/jumbo v27, "DataCompressionOff"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5c

    .line 1975
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_5a

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1980
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_saving_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1984
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 1988
    :cond_5c
    const-string/jumbo v27, "DataUsageBySIM"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1989
    if-eqz v20, :cond_5

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 2006
    .end local v19    # "sDataCompressionState":I
    .restart local v8    # "dataUsageReminder":Landroid/preference/SwitchPreference;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_5e

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2011
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 2014
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 2016
    .end local v8    # "dataUsageReminder":Landroid/preference/SwitchPreference;
    :cond_60
    const-string/jumbo v27, "DataUsageNotificationsOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_usage_reminder"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 2018
    .restart local v8    # "dataUsageReminder":Landroid/preference/SwitchPreference;
    if-eqz v8, :cond_63

    .line 2019
    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_62

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_61

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2025
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 2027
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 2032
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
