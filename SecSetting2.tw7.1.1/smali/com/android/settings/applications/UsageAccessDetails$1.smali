.class Lcom/android/settings/applications/UsageAccessDetails$1;
.super Ljava/lang/Object;
.source "UsageAccessDetails.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UsageAccessDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UsageAccessDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UsageAccessDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/UsageAccessDetails;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v0, "UsageDataAccessAllowUsageTracking"

    .line 209
    .local v0, "paramName":Ljava/lang/String;
    const-string/jumbo v2, "UsageDataAccessAllowUsageTrackingOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get1(Lcom/android/settings/applications/UsageAccessDetails;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsageDataAccessView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get1(Lcom/android/settings/applications/UsageAccessDetails;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsageDataAccessView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 222
    :cond_3
    const-string/jumbo v2, "UsageDataAccessAllowUsageTrackingOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get1(Lcom/android/settings/applications/UsageAccessDetails;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsageDataAccessView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get1(Lcom/android/settings/applications/UsageAccessDetails;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsageDataAccessView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails$1;->this$0:Lcom/android/settings/applications/UsageAccessDetails;

    invoke-static {v2}, Lcom/android/settings/applications/UsageAccessDetails;->-get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
