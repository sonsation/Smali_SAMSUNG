.class Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEmCallback, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEmCallback, SNS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", AGG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v3

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string/jumbo v3, ", SupportAgg:"

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v3

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string/jumbo v1, "SmartNetworkSwitchOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 542
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 544
    :cond_3
    const-string/jumbo v1, "SmartNetworkSwitchOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 546
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 547
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 553
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 558
    :cond_6
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 559
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 560
    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    const-string/jumbo v2, "mEmCallback, Ignore stateId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 561
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 562
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 563
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 567
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 571
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Z)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 575
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 579
    :cond_b
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 581
    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    const-string/jumbo v2, "mEmCallback, Ignore stateId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 583
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 584
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 585
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 588
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1, v5}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Z)V

    .line 589
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 591
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 596
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
