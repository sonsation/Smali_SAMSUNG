.class Lcom/samsung/android/settings/PrivacySettings$4;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/PrivacySettings;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1254
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1256
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "GoogleAccountBackupDataOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1257
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1258
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1259
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V

    .line 1260
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1261
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1265
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1267
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1268
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1271
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1274
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1276
    :cond_5
    const-string/jumbo v2, "GoogleAccountBackupDataOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1277
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1278
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1279
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-wrap5(Lcom/samsung/android/settings/PrivacySettings;)V

    .line 1280
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1281
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1284
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1286
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1287
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1290
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1293
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1295
    :cond_a
    const-string/jumbo v2, "GoogleAccountAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1296
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1297
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1298
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V

    .line 1299
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1305
    :cond_b
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1306
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1307
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1308
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountAdd"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1310
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1302
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 1312
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1314
    :cond_f
    const-string/jumbo v2, "GoogleAccountAutoRestoreOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1315
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1316
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1317
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V

    .line 1318
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1324
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1325
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1326
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1328
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1335
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1338
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1321
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1331
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 1340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1341
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1344
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1347
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1349
    :cond_16
    const-string/jumbo v2, "GoogleAccountAutoRestoreOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1351
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1352
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V

    .line 1353
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1359
    :cond_17
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1360
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1361
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1363
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1369
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1370
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1373
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1356
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    .line 1364
    :catch_1
    move-exception v0

    .line 1365
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1366
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 1375
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1376
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1379
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1382
    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
