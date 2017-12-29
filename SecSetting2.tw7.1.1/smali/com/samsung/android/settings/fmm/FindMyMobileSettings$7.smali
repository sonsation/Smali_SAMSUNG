.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "stateId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1048
    .local v0, "loginState":Z
    :goto_0
    const-string/jumbo v2, "FMMTurnOnRemoteControls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1052
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1189
    :cond_0
    :goto_1
    return-void

    .line 1046
    .end local v0    # "loginState":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "loginState":Z
    goto :goto_0

    .line 1054
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1055
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1056
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1059
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 1061
    :cond_4
    const-string/jumbo v2, "FMMTurnOffRemoteControls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1062
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1063
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1067
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1068
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1069
    if-eqz v0, :cond_7

    .line 1070
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1077
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1073
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "SamsungAccount"

    const-string/jumbo v5, "Vaild"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    .line 1079
    :cond_8
    const-string/jumbo v2, "FMMTurnOnGoogleLocationService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1080
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1081
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1085
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1086
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1087
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1090
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1092
    :cond_b
    const-string/jumbo v2, "FMMTurnOffGoogleLocationService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1093
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1094
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1098
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1100
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1103
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1105
    :cond_e
    const-string/jumbo v2, "FMMTurnOnSendLastLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1106
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get8(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1107
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1111
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get8(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1112
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1113
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1116
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1118
    :cond_11
    const-string/jumbo v2, "FMMTurnOffSendLastLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1119
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get8(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1120
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1124
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get8(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1125
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1126
    if-eqz v0, :cond_14

    .line 1127
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1134
    :cond_13
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1130
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "SamsungAccount"

    const-string/jumbo v5, "Vaild"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_3

    .line 1136
    :cond_15
    const-string/jumbo v2, "FMMTurnOnImproveLocationAccuracy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1137
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1138
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1142
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1143
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1144
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1147
    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1149
    :cond_18
    const-string/jumbo v2, "FMMTurnOffImproveLocationAccuracy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1150
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1151
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1153
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1155
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1156
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1157
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1160
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1162
    :cond_1b
    const-string/jumbo v2, "FMMTurnOnReactivationLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1163
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1164
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1166
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1168
    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1169
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1170
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1173
    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1175
    :cond_1e
    const-string/jumbo v2, "FMMTurnOffReactivationLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1177
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 1181
    :cond_1f
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1182
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1183
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1186
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
