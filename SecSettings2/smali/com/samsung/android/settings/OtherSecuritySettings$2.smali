.class Lcom/samsung/android/settings/OtherSecuritySettings$2;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/OtherSecuritySettings;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "MakePasswordsVisibleOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "MakePasswordVisible"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1248
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1249
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "MakePasswordVisible"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1253
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1256
    :cond_4
    const-string/jumbo v1, "MakePasswordsVisibleOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1257
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1259
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1261
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1263
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "MakePasswordVisible"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1267
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1268
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1269
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "MakePasswordVisible"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1272
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1275
    :cond_8
    const-string/jumbo v1, "SecurityPolicyUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1276
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1277
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1278
    :cond_9
    const-string/jumbo v1, "SendSecurityReportsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1279
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1280
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1284
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1285
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1286
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1289
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1291
    :cond_c
    const-string/jumbo v1, "SendSecurityReportsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1292
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1293
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1297
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1298
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1299
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1302
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1304
    :cond_f
    const-string/jumbo v1, "DeviceAdministators"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "DeviceAdministrators"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1305
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "manage_device_admin"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1306
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1307
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceAdministrators"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1309
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1310
    :cond_12
    const-string/jumbo v1, "ViewSecurityCertificates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1311
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "trusted_credentials"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1312
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1313
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ViewSecurityCertificates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1315
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1316
    :cond_14
    const-string/jumbo v1, "UserCertificates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1317
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1318
    const-string/jumbo v2, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v3

    .line 1317
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1320
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1322
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "user_credentials"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1323
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1324
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "UserCertificates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1326
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1328
    :cond_17
    const-string/jumbo v1, "InstallFromDeviceStorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1329
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1330
    const-string/jumbo v2, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v3

    .line 1329
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1332
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1334
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "credentials_install"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1335
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1336
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "InstallFromDeviceStorage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1338
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1340
    :cond_1a
    const-string/jumbo v1, "ClearCredentials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1342
    const-string/jumbo v2, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v3

    .line 1341
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1343
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1348
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1349
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1350
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Certificate"

    const-string/jumbo v3, "Present"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ClearCredentials"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1353
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1344
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Certificate"

    const-string/jumbo v3, "Present"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1355
    :cond_1d
    const-string/jumbo v1, "TrustAgent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1356
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1357
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ScreenLock"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1359
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1361
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "manage_trust_agents"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1362
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ScreenLock"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "TrustAgents"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1364
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1367
    :cond_1f
    const-string/jumbo v1, "PinWindows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1368
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1370
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1372
    :cond_20
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1373
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1375
    :cond_21
    const-string/jumbo v1, "UsageDataAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1376
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1378
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1380
    :cond_22
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v2, "usage_access"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1381
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1382
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "UsageDataAccess"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1384
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1386
    :cond_24
    const-string/jumbo v1, "NotificationAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1387
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get2(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1388
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1389
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationAccess"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1391
    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1392
    :cond_26
    const-string/jumbo v1, "DoNotDisturbAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1395
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1397
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1398
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1399
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DoNotDisturbAccess"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1401
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
