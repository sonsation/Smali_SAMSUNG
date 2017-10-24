.class Lcom/android/settings/datausage/DataUsageSummary$5;
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
    .line 1275
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 24

    .prologue
    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v17

    .line 1280
    .local v17, "stateId":Ljava/lang/String;
    const-string/jumbo v19, "DataSaver"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataSaverPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1282
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1284
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1414
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "opera_max_china_state"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1416
    .local v15, "sDataCompressionState":I
    const-string/jumbo v19, "DataUsageDetail"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1516
    .end local v15    # "sDataCompressionState":I
    :cond_3
    :goto_1
    return-void

    .line 1285
    :cond_4
    const-string/jumbo v19, "MobileDataOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v11

    .line 1287
    .local v11, "mobileDataSate":Z
    if-eqz v11, :cond_5

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1292
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 1294
    .local v16, "screen":Landroid/preference/PreferenceScreen;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1295
    .local v14, "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "no"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1300
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1302
    .end local v11    # "mobileDataSate":Z
    .end local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v16    # "screen":Landroid/preference/PreferenceScreen;
    :cond_7
    const-string/jumbo v19, "MobileDataOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v11

    .line 1304
    .restart local v11    # "mobileDataSate":Z
    if-nez v11, :cond_8

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1309
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 1311
    .restart local v16    # "screen":Landroid/preference/PreferenceScreen;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1312
    .restart local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "no"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1317
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1319
    .end local v11    # "mobileDataSate":Z
    .end local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v16    # "screen":Landroid/preference/PreferenceScreen;
    :cond_a
    const-string/jumbo v19, "CellularDataUsage"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 1322
    .restart local v16    # "screen":Landroid/preference/PreferenceScreen;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1324
    .restart local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v14}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_c

    .line 1325
    invoke-virtual {v14, v9}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 1326
    .local v12, "pref":Landroid/preference/Preference;
    instance-of v0, v12, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1324
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1330
    .end local v12    # "pref":Landroid/preference/Preference;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1333
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1334
    .end local v9    # "i":I
    .end local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v16    # "screen":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string/jumbo v19, "BillingCycle"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 1337
    .restart local v16    # "screen":Landroid/preference/PreferenceScreen;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 1339
    .restart local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {v14}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_10

    .line 1340
    invoke-virtual {v14, v9}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 1341
    .restart local v12    # "pref":Landroid/preference/Preference;
    instance-of v0, v12, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1339
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1345
    .end local v12    # "pref":Landroid/preference/Preference;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1348
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1349
    .end local v9    # "i":I
    .end local v14    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .end local v16    # "screen":Landroid/preference/PreferenceScreen;
    :cond_12
    const-string/jumbo v19, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "alert_at_warning"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    .line 1351
    .local v13, "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    if-eqz v13, :cond_2

    .line 1352
    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1357
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1362
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1365
    .end local v13    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    :cond_15
    const-string/jumbo v19, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "alert_at_warning"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    .line 1367
    .restart local v13    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    if-eqz v13, :cond_2

    .line 1368
    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_16

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1373
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1378
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1381
    .end local v13    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    :cond_18
    const-string/jumbo v19, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1388
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1393
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1396
    :cond_1b
    const-string/jumbo v19, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_1c

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1403
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1408
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1421
    .restart local v15    # "sDataCompressionState":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1423
    :cond_1f
    const-string/jumbo v19, "ManageAppData"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "restrict_app_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1426
    :cond_20
    const-string/jumbo v19, "WlanUsageView"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "wifi_data_usage"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1429
    :cond_21
    const-string/jumbo v19, "NetworkRestrictView"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "network_restrictions"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1432
    :cond_22
    const-string/jumbo v19, "DataUsageLimitSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "billing_preference_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1435
    :cond_23
    const-string/jumbo v19, "UsedDataPopup"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v19

    if-nez v19, :cond_24

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Exist"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1442
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    .line 1444
    .local v10, "method":Ljava/lang/String;
    if-eqz v10, :cond_28

    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 1451
    :cond_25
    const/4 v4, 0x0

    .line 1452
    .local v4, "bytes":F
    :try_start_0
    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 1453
    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1454
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1460
    :cond_26
    :goto_4
    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    .line 1461
    .local v18, "trafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 1462
    .local v5, "bytesString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1463
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 1464
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "data_used_by_check_time"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1463
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 1466
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "check_time"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1465
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 1468
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "middle_real_value"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v22

    .line 1467
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_27

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1475
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1476
    .end local v5    # "bytesString":Ljava/lang/String;
    .end local v6    # "currentTime":J
    .end local v18    # "trafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    :catch_0
    move-exception v8

    .line 1477
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v19, "DataUsageSummary"

    const-string/jumbo v20, "could not persist insert byte"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1445
    .end local v4    # "bytes":F
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1455
    .restart local v4    # "bytes":F
    :cond_29
    :try_start_1
    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 1456
    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1457
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 1458
    const/high16 v19, 0x44800000    # 1024.0f

    mul-float v4, v4, v19

    goto/16 :goto_4

    .line 1485
    .end local v4    # "bytes":F
    .end local v10    # "method":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v19, "DataCompressionOn"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 1486
    if-nez v15, :cond_2c

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1491
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data_saving_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1495
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1499
    :cond_2d
    const-string/jumbo v19, "DataCompressionOff"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1500
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_2f

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1505
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data_saving_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1509
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
