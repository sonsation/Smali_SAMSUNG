.class Lcom/samsung/android/settings/display/StatusBar$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/StatusBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/StatusBar;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "StatusBarRecentOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentON"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentON"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string/jumbo v1, "StatusBarRecentOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentOFF"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentOFF"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 242
    :cond_6
    const-string/jumbo v1, "StatusBarBatteryOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 249
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 251
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 255
    :cond_9
    const-string/jumbo v1, "StatusBarBatteryOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 257
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 262
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 264
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 268
    :cond_c
    const-string/jumbo v1, "ShowNetworkSpeedOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 277
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 270
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 275
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 281
    :cond_10
    const-string/jumbo v1, "ShowNetworkSpeedOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 283
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 288
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 290
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
