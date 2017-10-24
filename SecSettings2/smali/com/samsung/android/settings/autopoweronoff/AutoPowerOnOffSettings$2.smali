.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    .prologue
    const/16 v12, 0xfe

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 505
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "TurnOnAutoPowerOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 508
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 511
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 514
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 518
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 520
    :cond_3
    const-string/jumbo v7, "TurnOffAutoPowerOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 521
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_4

    .line 522
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 524
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 526
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 527
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 528
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 531
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 533
    :cond_6
    const-string/jumbo v7, "AutoPowerOnTime"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 534
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_7

    .line 535
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 537
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 539
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "setTime":Ljava/lang/String;
    const/4 v2, -0x1

    .line 541
    .local v2, "hour":I
    const/4 v3, -0x1

    .line 543
    .local v3, "mins":I
    :try_start_0
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 544
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 548
    :goto_1
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnTime: hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mins = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eq v2, v10, :cond_8

    if-ne v3, v10, :cond_9

    .line 551
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 553
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 555
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_a

    .line 556
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 558
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    .line 559
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 560
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerON"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "time"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 564
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 567
    .end local v2    # "hour":I
    .end local v3    # "mins":I
    .end local v5    # "setTime":Ljava/lang/String;
    :cond_c
    const-string/jumbo v7, "AutoPowerOnDays"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 568
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_d

    .line 569
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 571
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 573
    :cond_d
    const/4 v4, -0x1

    .line 575
    .local v4, "setDays":I
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 579
    :goto_2
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnDays: setDays = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-ltz v4, :cond_e

    if-le v4, v12, :cond_f

    .line 582
    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 584
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 576
    :catch_1
    move-exception v1

    .line 577
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_10

    .line 587
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 589
    :cond_10
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 590
    .local v0, "daysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 591
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_power_on_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    .line 594
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 595
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerON"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "Day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 599
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 602
    .end local v0    # "daysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .end local v4    # "setDays":I
    :cond_12
    const-string/jumbo v7, "TurnOnAutoPowerOff"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 603
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 604
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 606
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 608
    :cond_13
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 609
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 610
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 613
    :cond_14
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 615
    :cond_15
    const-string/jumbo v7, "TurnOffAutoPowerOff"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 616
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_16

    .line 617
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 619
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 621
    :cond_16
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 622
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 623
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 626
    :cond_17
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 628
    :cond_18
    const-string/jumbo v7, "AutoPowerOffTime"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 629
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_19

    .line 630
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 632
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 634
    :cond_19
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    .line 635
    .restart local v5    # "setTime":Ljava/lang/String;
    const/4 v2, -0x1

    .line 636
    .restart local v2    # "hour":I
    const/4 v3, -0x1

    .line 638
    .restart local v3    # "mins":I
    :try_start_2
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 639
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 643
    :goto_3
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOffTime: hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mins = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eq v2, v10, :cond_1a

    if-ne v3, v10, :cond_1b

    .line 646
    :cond_1a
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 648
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 640
    :catch_2
    move-exception v1

    .line 641
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 650
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 651
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 653
    :cond_1c
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    .line 654
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 655
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerOFF"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "time"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 659
    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 662
    .end local v2    # "hour":I
    .end local v3    # "mins":I
    .end local v5    # "setTime":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v7, "AutoPowerOffDays"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 663
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_1f

    .line 664
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 666
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 668
    :cond_1f
    const/4 v4, -0x1

    .line 670
    .restart local v4    # "setDays":I
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 674
    :goto_4
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnDays: setDays = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-ltz v4, :cond_20

    if-le v4, v12, :cond_21

    .line 677
    :cond_20
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 679
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 671
    :catch_3
    move-exception v1

    .line 672
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 681
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_21
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_22

    .line 682
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 684
    :cond_22
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 685
    .restart local v0    # "daysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 686
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_power_off_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    .line 689
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 690
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerOff"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "Day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 694
    :cond_23
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
