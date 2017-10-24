.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1947
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1948
    .local v1, "stateId":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 1949
    .local v2, "talkbackEnabled":Z
    const-string/jumbo v0, "Vision"

    .line 1951
    .local v0, "landingStateId":Ljava/lang/String;
    const-string/jumbo v3, "VoiceAssistant"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1952
    sget-boolean v3, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    if-eqz v3, :cond_2

    .line 1953
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    const-string/jumbo v4, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1954
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1953
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1955
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1956
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1957
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2333
    :cond_1
    :goto_0
    return-void

    .line 1959
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1961
    :cond_3
    const-string/jumbo v3, "VoiceAssistantHelp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1962
    if-nez v2, :cond_4

    .line 1963
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1965
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1967
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get18(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1968
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1969
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "on"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1972
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1974
    :cond_6
    const-string/jumbo v3, "DarkScreenOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1975
    if-nez v2, :cond_7

    .line 1976
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1978
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1979
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1987
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DarkScreen"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1989
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1980
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1981
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1982
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DarkScreen"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1985
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1991
    :cond_b
    const-string/jumbo v3, "DarkScreenOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1992
    if-nez v2, :cond_c

    .line 1993
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1995
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1996
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1997
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get12(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1998
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1999
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DarkScreen"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2002
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2004
    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DarkScreen"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2006
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2008
    :cond_f
    const-string/jumbo v3, "RapidKeyInputOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2009
    if-nez v2, :cond_10

    .line 2010
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2012
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2013
    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2021
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "RapidKeyInput"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2023
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2014
    :cond_12
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2015
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2016
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "RapidKeyInput"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2019
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2025
    :cond_14
    const-string/jumbo v3, "RapidKeyInputOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2026
    if-nez v2, :cond_15

    .line 2027
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2029
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2030
    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2031
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2032
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2033
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "RapidKeyInput"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2036
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2038
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "RapidKeyInput"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2040
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2042
    :cond_18
    const-string/jumbo v3, "SpeakPasswordsOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2043
    if-nez v2, :cond_19

    .line 2044
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2046
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2047
    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2048
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2056
    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SpeakPasswords"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2058
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2049
    :cond_1b
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2050
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2051
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SpeakPasswords"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2054
    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2060
    :cond_1d
    const-string/jumbo v3, "SpeakPasswordsOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2061
    if-nez v2, :cond_1e

    .line 2062
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceAssistantState"

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2064
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2065
    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2066
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 2065
    if-eqz v3, :cond_20

    .line 2067
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get20(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2068
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2069
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SpeakPasswords"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2072
    :cond_1f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2074
    :cond_20
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SpeakPasswords"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2076
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2078
    :cond_21
    const-string/jumbo v3, "AccessibilityShortcut"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2079
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2080
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2081
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2082
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2084
    :cond_22
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2086
    :cond_23
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2088
    :cond_24
    const-string/jumbo v3, "AccessibilityShortcutOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2089
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2090
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2098
    :cond_25
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AccessibilityShortcut"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2100
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2091
    :cond_26
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    .line 2092
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2093
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AccessibilityShortcut"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2096
    :cond_27
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2102
    :cond_28
    const-string/jumbo v3, "AccessibilityShortcutOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2103
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2104
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v3

    .line 2103
    if-eqz v3, :cond_2a

    .line 2105
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    .line 2106
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2107
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AccessibilityShortcut"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2110
    :cond_29
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2112
    :cond_2a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AccessibilityShortcut"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2114
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2116
    :cond_2b
    const-string/jumbo v3, "VoiceLabel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2117
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get22(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get22(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2118
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get22(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2119
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2120
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "VoiceLabel"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2122
    :cond_2c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2124
    :cond_2d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2127
    :cond_2e
    const-string/jumbo v3, "LargeMousePointerOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2128
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2136
    :cond_2f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointerState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointer"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2138
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2129
    :cond_30
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2130
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2131
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointerState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointer"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2134
    :cond_31
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2140
    :cond_32
    const-string/jumbo v3, "LargeMousePointerOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2141
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2142
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get19(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2143
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2144
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointerState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointer"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2147
    :cond_33
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2149
    :cond_34
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointerState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LargeMousePointer"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2151
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2153
    :cond_35
    const-string/jumbo v3, "FontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2154
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2155
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2156
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2157
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2158
    :cond_36
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2160
    :cond_37
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2162
    :cond_38
    const-string/jumbo v3, "HighContrastFontsOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2163
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2164
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastFontsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2166
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2168
    :cond_39
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2169
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2170
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastFontsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2173
    :cond_3a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2175
    :cond_3b
    const-string/jumbo v3, "HighContrastFontsOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2176
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 2177
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastFontsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2179
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2181
    :cond_3c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2182
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2183
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastFontsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2186
    :cond_3d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2188
    :cond_3e
    const-string/jumbo v3, "HighContrastKeyboardOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2189
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 2190
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2191
    return-void

    .line 2193
    :cond_3f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2194
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastKeyboardState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2196
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2198
    :cond_40
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2199
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2200
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastKeyboardState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2203
    :cond_41
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2205
    :cond_42
    const-string/jumbo v3, "HighContrastKeyboardOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2206
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_43

    .line 2207
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2208
    return-void

    .line 2210
    :cond_43
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_44

    .line 2211
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastKeyboardState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2213
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2215
    :cond_44
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get11(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2216
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2217
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighContrastKeyboardState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2220
    :cond_45
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2222
    :cond_46
    const-string/jumbo v3, "ShowButtonShapesOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2223
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_47

    .line 2224
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2225
    return-void

    .line 2227
    :cond_47
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2228
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowButtonShapesState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2230
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2232
    :cond_48
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2233
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2234
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowButtonShapesState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2237
    :cond_49
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2239
    :cond_4a
    const-string/jumbo v3, "ShowButtonShapesOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2240
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 2241
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2242
    return-void

    .line 2244
    :cond_4b
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 2245
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowButtonShapesState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2247
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2249
    :cond_4c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get17(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2250
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2251
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowButtonShapesState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2254
    :cond_4d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2256
    :cond_4e
    const-string/jumbo v3, "MagnifierWindow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2257
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get13(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get13(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 2258
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get13(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2259
    :cond_4f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2260
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2261
    :cond_50
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2262
    :cond_51
    const-string/jumbo v3, "MagnificationGestures"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2263
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2264
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2265
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2266
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2267
    :cond_52
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2269
    :cond_53
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2271
    :cond_54
    const-string/jumbo v3, "GrayscaleOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2272
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 2273
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GrayscaleState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2275
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2277
    :cond_55
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2278
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2279
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GrayscaleState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2282
    :cond_56
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2284
    :cond_57
    const-string/jumbo v3, "GrayscaleOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2285
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_58

    .line 2286
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GrayscaleState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2288
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2290
    :cond_58
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2291
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2292
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GrayscaleState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2295
    :cond_59
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2297
    :cond_5a
    const-string/jumbo v3, "NegativeColorsOn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2298
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2299
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NegativeColorsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2301
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2303
    :cond_5b
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2304
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2305
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NegativeColorsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2308
    :cond_5c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2310
    :cond_5d
    const-string/jumbo v3, "NegativeColorsOff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2311
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 2312
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NegativeColorsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2314
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2316
    :cond_5e
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2317
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2318
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NegativeColorsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2321
    :cond_5f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2323
    :cond_60
    const-string/jumbo v3, "ColorAdjustment"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2324
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2325
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2326
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2327
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2328
    :cond_61
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2330
    :cond_62
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$15;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
