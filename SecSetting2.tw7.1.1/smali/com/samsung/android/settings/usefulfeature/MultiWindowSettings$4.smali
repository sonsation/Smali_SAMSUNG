.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;
.super Ljava/lang/Object;
.source "MultiWindowSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 493
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "PopUpviewActionOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PopupviewGesture"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 501
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PopupviewGesture "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 507
    :cond_3
    const-string/jumbo v1, "PopUpviewActionOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 508
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PopupviewGesture"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 514
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 515
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PopupviewGesture "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 518
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 520
    :cond_6
    const-string/jumbo v1, "UseRecentsButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 522
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 523
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 525
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
