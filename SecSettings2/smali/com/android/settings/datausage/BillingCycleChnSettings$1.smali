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
    .line 502
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 505
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "stateId":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 507
    .local v5, "isDataLimitEnable":Z
    if-nez v5, :cond_0

    .line 508
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 509
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 508
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4

    .line 509
    const/4 v5, 0x0

    .line 510
    .end local v5    # "isDataLimitEnable":Z
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 511
    .local v6, "isDataUsageLimitRestrictOn":Z
    if-nez v6, :cond_1

    .line 512
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 512
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_5

    .line 513
    const/4 v6, 0x0

    .line 516
    .end local v6    # "isDataUsageLimitRestrictOn":Z
    :cond_1
    :goto_1
    const-string/jumbo v11, "DataUsageLimitOn"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 517
    if-nez v5, :cond_7

    .line 518
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 519
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    const-string/jumbo v13, "AlreadyON"

    const-string/jumbo v14, "No"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 522
    :cond_2
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v11, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 523
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 687
    :cond_3
    :goto_3
    return-void

    .line 509
    .restart local v5    # "isDataLimitEnable":Z
    :cond_4
    const/4 v5, 0x1

    .local v5, "isDataLimitEnable":Z
    goto/16 :goto_0

    .line 513
    .end local v5    # "isDataLimitEnable":Z
    .restart local v6    # "isDataUsageLimitRestrictOn":Z
    :cond_5
    const/4 v6, 0x1

    .local v6, "isDataUsageLimitRestrictOn":Z
    goto :goto_1

    .end local v6    # "isDataUsageLimitRestrictOn":Z
    :cond_6
    move v9, v10

    .line 522
    goto :goto_2

    .line 526
    :cond_7
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyON"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 528
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3

    .line 530
    :cond_8
    const-string/jumbo v11, "DataUsageLimitOff"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 531
    if-eqz v5, :cond_b

    .line 532
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 533
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "No"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 536
    :cond_9
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_a

    :goto_4
    invoke-virtual {v11, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 537
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3

    :cond_a
    move v9, v10

    .line 536
    goto :goto_4

    .line 540
    :cond_b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 542
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 544
    :cond_c
    const-string/jumbo v10, "MonthlyDataLimitPopup"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 545
    if-nez v5, :cond_d

    .line 546
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 548
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 550
    :cond_d
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-nez v10, :cond_e

    .line 552
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 553
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 555
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 557
    :cond_e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "method":Ljava/lang/String;
    if-eqz v7, :cond_11

    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 566
    :cond_f
    const/4 v0, 0x0

    .line 567
    .local v0, "bytes":F
    :try_start_0
    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 568
    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 569
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 575
    :cond_10
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "bytesString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 578
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set_data_limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 581
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    .line 583
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Already set"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 586
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 587
    .end local v1    # "bytesString":Ljava/lang/String;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    .line 588
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "BillingCycleChnSettings"

    const-string/jumbo v10, "could not persist insert byte"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 590
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 592
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 560
    .end local v0    # "bytes":F
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 561
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 563
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 570
    .restart local v0    # "bytes":F
    :cond_12
    :try_start_1
    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 571
    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 572
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 573
    const/high16 v9, 0x44800000    # 1024.0f

    mul-float/2addr v0, v9

    goto/16 :goto_5

    .line 597
    .end local v0    # "bytes":F
    .end local v7    # "method":Ljava/lang/String;
    :cond_13
    const-string/jumbo v10, "DataWarning"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 598
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get5(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 599
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 600
    :cond_14
    const-string/jumbo v10, "DataUsageLimitRestrictOn"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 601
    if-nez v5, :cond_15

    .line 602
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 604
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 606
    :cond_15
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    if-nez v6, :cond_17

    .line 608
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 609
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyON"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 612
    :cond_16
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 613
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 616
    :cond_17
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyON"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 618
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 621
    :cond_18
    const-string/jumbo v10, "DataUsageLimitRestrictOff"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 622
    if-nez v5, :cond_19

    .line 623
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 625
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 627
    :cond_19
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-eqz v6, :cond_1b

    .line 629
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 630
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 633
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 634
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 637
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 639
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 642
    :cond_1c
    const-string/jumbo v10, "PlanBillingPopup"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 643
    if-nez v5, :cond_1d

    .line 644
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 646
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 648
    :cond_1d
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-nez v10, :cond_1e

    .line 650
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 651
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 653
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 655
    :cond_1e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v7

    .line 657
    .restart local v7    # "method":Ljava/lang/String;
    if-nez v7, :cond_1f

    .line 658
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 659
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 661
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 664
    :cond_1f
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 665
    .local v2, "cycleDay":I
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 666
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set_package_start_date_value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 667
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 668
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_package_start_date_value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 667
    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 670
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    .line 672
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Already set"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 675
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 676
    .end local v2    # "cycleDay":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v3

    .line 677
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "BillingCycleChnSettings"

    const-string/jumbo v10, "could not persist insert byte"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 679
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 681
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3
.end method
