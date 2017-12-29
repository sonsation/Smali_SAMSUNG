.class Lcom/android/settings/LegalSettings$2;
.super Ljava/lang/Object;
.source "LegalSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LegalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LegalSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LegalSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/LegalSettings;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "OpenSourceLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 358
    :cond_2
    const-string/jumbo v1, "GoogleLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "terms"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 363
    :cond_4
    const-string/jumbo v1, "SystemWebViewLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 364
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "webview_license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 365
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 367
    :cond_5
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 368
    :cond_6
    const-string/jumbo v1, "SamsungLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 369
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "samsung_legal"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 371
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 372
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 373
    :cond_8
    const-string/jumbo v1, "SafetyInformation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "safetyinfomation"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 375
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 376
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 377
    :cond_9
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
