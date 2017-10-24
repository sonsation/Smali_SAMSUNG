.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 1163
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "UsedSpace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1165
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b04f9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1166
    .local v0, "preference":Landroid/preference/Preference;
    if-nez v0, :cond_1

    .line 1167
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1201
    .end local v0    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 1169
    .restart local v0    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1170
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1171
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsedSpace"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1172
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1174
    .end local v0    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string/jumbo v2, "CachedDataPopup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1175
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b136c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1176
    .restart local v0    # "preference":Landroid/preference/Preference;
    if-nez v0, :cond_4

    .line 1177
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "CacheData"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "InternalStorage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1181
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1182
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1184
    .end local v0    # "preference":Landroid/preference/Preference;
    :cond_5
    const-string/jumbo v2, "CachedDataPopupConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1185
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1186
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "CacheData"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "CachedDataPopup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1189
    :cond_6
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1190
    :cond_7
    const-string/jumbo v2, "AppsInTurnalStorageListView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b1368

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1192
    .restart local v0    # "preference":Landroid/preference/Preference;
    if-nez v0, :cond_8

    .line 1193
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1195
    :cond_8
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1196
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1197
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1198
    :cond_9
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
