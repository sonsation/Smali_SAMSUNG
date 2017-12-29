.class Lcom/samsung/android/settings/SecurityPolicySettings$2;
.super Ljava/lang/Object;
.source "SecurityPolicySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecurityPolicySettings;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const v6, 0x7f0f02b0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "SecurityPolicyUpdatesNow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 343
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 349
    :cond_3
    const-string/jumbo v2, "SecurityAutoUpdateOn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 352
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 354
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 356
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 360
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 361
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 365
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 370
    :cond_7
    const-string/jumbo v2, "SecurityAutoUpdateOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 371
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 373
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 375
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_9

    .line 377
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 381
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 383
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 386
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 391
    :cond_b
    const-string/jumbo v2, "SecurityPolicyDownloadViaWifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 392
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 396
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 397
    .local v1, "value":I
    if-ne v1, v5, :cond_d

    .line 399
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifi"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 394
    .end local v1    # "value":I
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 403
    .restart local v1    # "value":I
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap1(Lcom/samsung/android/settings/SecurityPolicySettings;I)V

    .line 404
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 406
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 407
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifi"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 410
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 415
    .end local v1    # "value":I
    :cond_f
    const-string/jumbo v2, "SecurityPolicyDownloadViaMobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 420
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 421
    .restart local v1    # "value":I
    if-nez v1, :cond_11

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifiorMobileNetworks"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 418
    .end local v1    # "value":I
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 427
    .restart local v1    # "value":I
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap1(Lcom/samsung/android/settings/SecurityPolicySettings;I)V

    .line 428
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 430
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 431
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifiorMobileNetworks"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 434
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
