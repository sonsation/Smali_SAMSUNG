.class Lcom/samsung/android/settings/NewOneHandOperationSettings$3;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const v4, 0x112006a

    const/4 v3, 0x1

    .line 574
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "OneHandedModeOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 582
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 586
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 588
    :cond_3
    const-string/jumbo v2, "OneHandedModeOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 589
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 590
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 592
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 594
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 595
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 596
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode "

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 599
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 601
    :cond_6
    const-string/jumbo v2, "ReduceScreenSizeByUsingButton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 602
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    .line 603
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 604
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 605
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 606
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 607
    .local v0, "showHardkey":Z
    if-nez v0, :cond_7

    .line 608
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 611
    .end local v0    # "showHardkey":Z
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 612
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ReduceScreensizeByButton"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 614
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 616
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 617
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 618
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ReduceScreensizeByButton "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 621
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 623
    :cond_a
    const-string/jumbo v2, "ReduceScreenSizeByUsingGesture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    .line 625
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 626
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 627
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 628
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 629
    .restart local v0    # "showHardkey":Z
    if-nez v0, :cond_b

    .line 630
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 633
    .end local v0    # "showHardkey":Z
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 634
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ReduceScreensizeByGesture"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 638
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 639
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 640
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ReduceScreensizeByGesture "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 643
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
