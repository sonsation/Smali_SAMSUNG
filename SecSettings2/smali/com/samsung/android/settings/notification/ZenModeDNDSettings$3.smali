.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 18

    .prologue
    .line 908
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    .line 910
    .local v13, "stateId":Ljava/lang/String;
    const-string/jumbo v14, "DoNotDisturbOn"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 912
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 918
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 921
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 923
    :cond_3
    const-string/jumbo v14, "DoNotDisturbOff"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 924
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_4

    .line 925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyOFF"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 929
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyOFF"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 934
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 936
    :cond_6
    const-string/jumbo v14, "DoNotDisturbScheduledOn"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 937
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 942
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 947
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 949
    :cond_9
    const-string/jumbo v14, "DoNotDisturbScheduledOff"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_a

    .line 951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 955
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 960
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 962
    :cond_c
    const-string/jumbo v14, "DoNotdisturbSchedule"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 963
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    .line 964
    .local v8, "sDay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    .line 965
    .local v11, "startTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, "endTime":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "HH:MM"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 967
    .local v10, "st":Ljava/text/SimpleDateFormat;
    const/4 v5, -0x1

    .line 968
    .local v5, "iDay":I
    const/4 v6, 0x0

    .line 969
    .local v6, "isDayValid":Z
    const/4 v12, 0x0

    .line 970
    .local v12, "start_date":Ljava/util/Date;
    const/4 v3, 0x0

    .line 972
    .local v3, "end_date":Ljava/util/Date;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 973
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 974
    .local v12, "start_date":Ljava/util/Date;
    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 978
    .end local v3    # "end_date":Ljava/util/Date;
    .end local v12    # "start_date":Ljava/util/Date;
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget-object v14, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v14, v14

    if-ge v4, v14, :cond_d

    .line 979
    sget-object v14, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v14, v14, v4

    if-ne v5, v14, :cond_10

    .line 980
    const/4 v6, 0x1

    .line 984
    :cond_d
    if-eqz v6, :cond_e

    if-nez v12, :cond_11

    .line 985
    :cond_e
    const-string/jumbo v7, "StartTime"

    .line 986
    .local v7, "nlgParam":Ljava/lang/String;
    if-nez v3, :cond_f

    .line 987
    const-string/jumbo v7, "EndTime"

    .line 989
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 975
    .end local v4    # "i":I
    .end local v7    # "nlgParam":Ljava/lang/String;
    .restart local v3    # "end_date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 976
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 978
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v3    # "end_date":Ljava/util/Date;
    .restart local v4    # "i":I
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 984
    :cond_11
    if-eqz v3, :cond_e

    .line 993
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_12

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 996
    :cond_12
    const/4 v14, 0x1

    new-array v9, v14, [I

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v14, v9, v15

    .line 997
    .local v9, "scheduleDay":[I
    const/4 v14, 0x0

    aput v5, v9, v14

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    iput-object v9, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/Date;->getMinutes()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 1002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 1003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v15

    invoke-static {v15}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1006
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SameDonotDisturb"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Days"

    .line 1008
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1007
    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "StartTime"

    .line 1010
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1009
    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "EndTime"

    .line 1012
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1011
    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1015
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1017
    .end local v2    # "endTime":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "iDay":I
    .end local v6    # "isDayValid":Z
    .end local v8    # "sDay":Ljava/lang/String;
    .end local v9    # "scheduleDay":[I
    .end local v10    # "st":Ljava/text/SimpleDateFormat;
    .end local v11    # "startTime":Ljava/lang/String;
    :cond_14
    const-string/jumbo v14, "DoNotDisturbAllowExceptions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1021
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
