.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v4, 0x32

    .line 732
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "SoundDetectors"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 736
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SoundDetectors"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 890
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    const-string/jumbo v3, "FlashnotificationOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 740
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 745
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 746
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 750
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 752
    :cond_5
    const-string/jumbo v3, "FlashnotificationOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 753
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 754
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 756
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 758
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 759
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 760
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 763
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 765
    :cond_8
    const-string/jumbo v3, "TurnOffAllSoundsOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 766
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 767
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 771
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 772
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 773
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 776
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 778
    :cond_b
    const-string/jumbo v3, "TurnOffAllSoundsOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 779
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_c

    .line 780
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 782
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 784
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 785
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 786
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 789
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 791
    :cond_e
    const-string/jumbo v3, "SubtitlesStyle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 792
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 793
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 794
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 795
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 796
    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 798
    :cond_10
    const-string/jumbo v3, "GoogleSubtitles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 799
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 800
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 801
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 802
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GoogleSubtitles"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 803
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 805
    :cond_12
    const-string/jumbo v3, "MonoAudioOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 806
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 807
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 809
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 811
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 812
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 813
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 816
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 818
    :cond_15
    const-string/jumbo v3, "MonoAudioOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 819
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_16

    .line 820
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 822
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 824
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 825
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 826
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 829
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 831
    :cond_18
    const-string/jumbo v3, "LeftRrightSoundBalanceMoveRight"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 832
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 833
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 834
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v0

    .line 835
    .local v0, "progress":I
    const-string/jumbo v3, "AccessibilitySettings_Hearing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio bance prefre: progress1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-lt v0, v6, :cond_19

    .line 837
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LeftRightSoundBalance"

    const-string/jumbo v5, "AlreadyMaximum"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 844
    :cond_19
    add-int/lit8 v3, v0, 0xa

    if-le v3, v6, :cond_1b

    .line 845
    const/16 v2, 0x64

    .line 846
    .local v2, "value":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 847
    const-string/jumbo v4, "sound_balance"

    .line 846
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 848
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setProgress(I)V

    .line 849
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 850
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LeftRightSoundBalance"

    const-string/jumbo v5, "AlreadyMaximum"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 853
    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 845
    .end local v2    # "value":I
    :cond_1b
    add-int/lit8 v2, v0, 0xa

    .restart local v2    # "value":I
    goto :goto_1

    .line 856
    .end local v0    # "progress":I
    .end local v2    # "value":I
    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "EarPhone"

    const-string/jumbo v5, "PluggedIN"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 858
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 861
    :cond_1d
    const-string/jumbo v3, "LeftRrightSoundBalanceMoveLeft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 863
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v0

    .line 864
    .restart local v0    # "progress":I
    const-string/jumbo v3, "AccessibilitySettings_Hearing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio bance prefre: progress2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-gtz v0, :cond_1e

    .line 866
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LeftRightSoundBalance"

    const-string/jumbo v5, "AlreadyMinimum"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 868
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 873
    :cond_1e
    add-int/lit8 v3, v0, -0xa

    if-gez v3, :cond_20

    .line 874
    const/4 v2, 0x0

    .line 875
    .restart local v2    # "value":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 876
    const-string/jumbo v4, "sound_balance"

    .line 875
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 877
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setProgress(I)V

    .line 878
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 879
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LeftRightSoundBalance"

    const-string/jumbo v5, "AlreadyMinimum"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 882
    :cond_1f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 874
    .end local v2    # "value":I
    :cond_20
    add-int/lit8 v2, v0, -0xa

    .restart local v2    # "value":I
    goto :goto_2

    .line 885
    .end local v0    # "progress":I
    .end local v2    # "value":I
    :cond_21
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "EarPhone"

    const-string/jumbo v5, "PluggedIN"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
