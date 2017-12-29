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
    .line 1328
    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 1331
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "MakePasswordsVisibleOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1333
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1339
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1341
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1343
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1344
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1345
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1348
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1351
    :cond_4
    const-string/jumbo v2, "MakePasswordsVisibleOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1352
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1354
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1356
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1358
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1360
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1362
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1363
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1364
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1367
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1370
    :cond_8
    const-string/jumbo v2, "SetupSimCardLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1371
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "sim_lock_settings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1372
    .local v0, "simPref":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1373
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1374
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1375
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SimCardLock"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SetupSimCardLock"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1378
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1380
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1381
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SimCardLock"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SetupSimCardLock"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1384
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1386
    .end local v0    # "simPref":Landroid/preference/Preference;
    :cond_c
    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1387
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1388
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1389
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1391
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1392
    :cond_e
    const-string/jumbo v2, "SendSecurityReportsOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1393
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1394
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1396
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1398
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1399
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1400
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1403
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1405
    :cond_11
    const-string/jumbo v2, "SendSecurityReportsOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1406
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1407
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1409
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1411
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1412
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1413
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1416
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1418
    :cond_14
    const-string/jumbo v2, "DeviceAdministators"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "DeviceAdministrators"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1419
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "manage_device_admin"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1420
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1421
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DeviceAdministrators"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1423
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1424
    :cond_17
    const-string/jumbo v2, "ViewSecurityCertificates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1425
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "trusted_credentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1426
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1427
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ViewSecurityCertificates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1429
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1430
    :cond_19
    const-string/jumbo v2, "UserCertificates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1431
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1432
    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    .line 1431
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1434
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1436
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "user_credentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1437
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1438
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "UserCertificates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1440
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1442
    :cond_1c
    const-string/jumbo v2, "InstallFromDeviceStorage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1443
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1444
    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    .line 1443
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1446
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1448
    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "credentials_install"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1449
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1450
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "InstallFromDeviceStorage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1452
    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1454
    :cond_1f
    const-string/jumbo v2, "ClearCredentials"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1455
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1456
    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    .line 1455
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1457
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1462
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1463
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1464
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Certificate"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ClearCredentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1467
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1458
    :cond_21
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Certificate"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1460
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1469
    :cond_22
    const-string/jumbo v2, "TrustAgent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1470
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1471
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenLock"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1473
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1475
    :cond_23
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "manage_trust_agents"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1476
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenLock"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "TrustAgents"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1478
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1481
    :cond_24
    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1482
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1484
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1486
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1487
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1489
    :cond_26
    const-string/jumbo v2, "UsageDataAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1490
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1492
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1494
    :cond_27
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "usage_access"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1495
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1496
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "UsageDataAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1498
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1500
    :cond_29
    const-string/jumbo v2, "NotificationAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1501
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get2(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1502
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1503
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "NotificationAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1505
    :cond_2a
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1506
    :cond_2b
    const-string/jumbo v2, "DoNotDisturbAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get9(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1509
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1511
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get9(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1512
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1513
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DoNotDisturbAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1515
    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
