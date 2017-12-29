.class Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;
.super Ljava/lang/Object;
.source "SamsungAdId.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SamsungAdId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 143
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "SamsungAdvertisingID_Reset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    .line 146
    const-string/jumbo v3, "reset_ad_id"

    .line 145
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 147
    .local v0, "advertisingPreference":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ADID"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 163
    .end local v0    # "advertisingPreference":Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const-string/jumbo v2, "SamsungAdvertisingID_Inform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    .line 155
    const-string/jumbo v3, "about_ad_id"

    .line 154
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 156
    .restart local v0    # "advertisingPreference":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 157
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ADID"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
