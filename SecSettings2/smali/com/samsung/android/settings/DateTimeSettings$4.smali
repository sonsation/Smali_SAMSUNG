.class Lcom/samsung/android/settings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DateTimeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DateTimeSettings;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 1038
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "Use24HourFormatOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Use24HourFormatOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1042
    .local v0, "is24Hour":Z
    const-string/jumbo v2, "Use24HourFormatOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1043
    if-eqz v0, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateFormat"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "YES"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateAndTime"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1070
    .end local v0    # "is24Hour":Z
    :cond_1
    :goto_0
    return-void

    .line 1048
    .restart local v0    # "is24Hour":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1050
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateFormat"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "NO"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateAndTime"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1053
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1056
    :cond_4
    if-eqz v0, :cond_6

    .line 1057
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1058
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1059
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateFormat"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "NO"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateAndTime"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1062
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1064
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateFormat"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "YES"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DateAndTime"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
