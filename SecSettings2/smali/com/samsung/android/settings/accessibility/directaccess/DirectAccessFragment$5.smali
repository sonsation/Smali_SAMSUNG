.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 636
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "DirectAccessOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 639
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 641
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 749
    :cond_1
    :goto_0
    return-void

    .line 647
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 649
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 651
    :cond_3
    const-string/jumbo v3, "DirectAccessOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 652
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 653
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 654
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 658
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 660
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 662
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 664
    :cond_6
    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 665
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 664
    if-eqz v3, :cond_1

    .line 666
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 667
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 669
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 670
    return-void

    .line 672
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_19

    .line 673
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "optionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    const-string/jumbo v3, "Accessibility"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 677
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .line 710
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_9
    :goto_1
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 711
    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 712
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_14

    .line 713
    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 714
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 715
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 718
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 675
    .restart local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_b
    const-string/jumbo v3, "Talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 680
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_c
    const-string/jumbo v3, "Voice Assistant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 683
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_d
    const-string/jumbo v3, "Universal switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 686
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get10(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_e
    const-string/jumbo v3, "Magnifier window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 689
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_f
    const-string/jumbo v3, "Negative colors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 692
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_10
    const-string/jumbo v3, "Greyscale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 695
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_11
    const-string/jumbo v3, "Color adjustment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 698
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_12
    const-string/jumbo v3, "Interaction control"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 701
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 675
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_13
    const-string/jumbo v3, "Page Reader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 704
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 720
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 722
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 724
    :cond_15
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 726
    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 727
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 728
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 731
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 733
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 735
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 739
    :cond_18
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 744
    .end local v0    # "optionName":Ljava/lang/String;
    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 746
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
