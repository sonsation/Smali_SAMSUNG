.class Lcom/android/settings/datausage/BillingCycleChnSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/BillingCycleChnSettings;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 21

    .prologue
    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    .line 554
    .local v13, "stateId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "switch_traffic_settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 555
    .local v9, "isDataLimitEnable":Z
    if-nez v9, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 557
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "switch_traffic_settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 556
    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-nez v17, :cond_4

    .line 557
    const/4 v9, 0x0

    .line 559
    .end local v9    # "isDataLimitEnable":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restrict_data_check_box"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 560
    .local v10, "isDataUsageLimitRestrictOn":Z
    if-nez v10, :cond_1

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 562
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restrict_data_check_box"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 561
    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-nez v17, :cond_5

    .line 562
    const/4 v10, 0x0

    .line 565
    .end local v10    # "isDataUsageLimitRestrictOn":Z
    :cond_1
    :goto_1
    const-string/jumbo v17, "DataUsageLimitOn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 566
    if-nez v9, :cond_7

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 571
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v18

    if-eqz v9, :cond_6

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 770
    :cond_3
    :goto_3
    return-void

    .line 557
    .restart local v9    # "isDataLimitEnable":Z
    :cond_4
    const/4 v9, 0x1

    .local v9, "isDataLimitEnable":Z
    goto/16 :goto_0

    .line 562
    .end local v9    # "isDataLimitEnable":Z
    .restart local v10    # "isDataUsageLimitRestrictOn":Z
    :cond_5
    const/4 v10, 0x1

    .local v10, "isDataUsageLimitRestrictOn":Z
    goto :goto_1

    .line 571
    .end local v10    # "isDataUsageLimitRestrictOn":Z
    :cond_6
    const/16 v17, 0x1

    goto :goto_2

    .line 575
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    .line 579
    :cond_8
    const-string/jumbo v17, "DataUsageLimitOff"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 580
    if-eqz v9, :cond_b

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 585
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v18

    if-eqz v9, :cond_a

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 585
    :cond_a
    const/16 v17, 0x1

    goto :goto_4

    .line 589
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 593
    :cond_c
    const-string/jumbo v17, "MonthlyDataLimitPopup"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    const-string/jumbo v17, "SetMonthlyDataLimit"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 594
    :cond_d
    if-nez v9, :cond_e

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 599
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_10

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 606
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 608
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataNumber"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 609
    .local v11, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUnit"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 610
    .local v16, "unit":Ljava/lang/String;
    if-eqz v11, :cond_11

    if-nez v16, :cond_12

    .line 611
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 617
    :cond_12
    const/4 v2, 0x0

    .line 618
    .local v2, "bytes":F
    :try_start_0
    const-string/jumbo v17, "MB"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 619
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 624
    :cond_13
    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "bytesString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 627
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_data_limit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_data_limit"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Already set"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 635
    .end local v3    # "bytesString":Ljava/lang/String;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v7

    .line 636
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "BillingCycleChnSettings"

    const-string/jumbo v18, "could not persist insert byte"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 620
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    :try_start_1
    const-string/jumbo v17, "GB"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 621
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 622
    const/high16 v17, 0x44800000    # 1024.0f

    mul-float v2, v2, v17

    goto/16 :goto_5

    .line 645
    .end local v2    # "bytes":F
    .end local v11    # "method":Ljava/lang/String;
    .end local v16    # "unit":Ljava/lang/String;
    :cond_15
    const-string/jumbo v17, "DataWarning"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 646
    if-nez v9, :cond_16

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 651
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 652
    .local v12, "sharedpre":Landroid/content/SharedPreferences;
    const/4 v15, 0x0

    .line 653
    .local v15, "total":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_data_limit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "max"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 654
    .local v15, "total":Ljava/lang/String;
    const-string/jumbo v17, "max"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 656
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 657
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_data_limit"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 656
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 662
    :cond_17
    :goto_6
    const-string/jumbo v17, "max"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 663
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 658
    :catch_1
    move-exception v6

    .line 659
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "max"

    goto :goto_6

    .line 667
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get5(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 669
    const/4 v4, 0x0

    .line 670
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    .line 671
    .local v14, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v14, :cond_1a

    .line 672
    invoke-virtual {v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v4

    .line 674
    :cond_1a
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_1c

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SimCardInfo"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarning"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 682
    .end local v4    # "count":I
    .end local v14    # "subManager":Landroid/telephony/SubscriptionManager;
    :cond_1b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 677
    .restart local v4    # "count":I
    .restart local v14    # "subManager":Landroid/telephony/SubscriptionManager;
    :cond_1c
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1b

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_7

    .line 685
    .end local v4    # "count":I
    .end local v12    # "sharedpre":Landroid/content/SharedPreferences;
    .end local v14    # "subManager":Landroid/telephony/SubscriptionManager;
    .end local v15    # "total":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v17, "DataUsageLimitRestrictOn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 686
    if-nez v9, :cond_1e

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarninglmit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 691
    :cond_1e
    if-nez v10, :cond_20

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 696
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 700
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 705
    :cond_21
    const-string/jumbo v17, "DataUsageLimitRestrictOff"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 706
    if-nez v9, :cond_22

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarninglmit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 711
    :cond_22
    if-eqz v10, :cond_24

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 716
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 720
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 725
    :cond_25
    const-string/jumbo v17, "PlanBillingPopup"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_26

    const-string/jumbo v17, "SetPlanBillingDay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 726
    :cond_26
    if-nez v9, :cond_27

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 731
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_29

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_28

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 738
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 740
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 741
    .restart local v11    # "method":Ljava/lang/String;
    if-nez v11, :cond_2a

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 748
    :cond_2a
    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 749
    .local v5, "cycleDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 750
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_package_start_date_value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 752
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_package_start_date_value"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 751
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Already set"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 759
    .end local v5    # "cycleDay":I
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v7

    .line 760
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "BillingCycleChnSettings"

    const-string/jumbo v18, "could not persist insert byte"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
