.class Lcom/samsung/android/settings/ConnectionsSettings$5;
.super Ljava/lang/Object;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ConnectionsSettings;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 738
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 751
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "WiFiSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 756
    :cond_3
    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 757
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 758
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 759
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 760
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 761
    :cond_5
    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 762
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 763
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 764
    :cond_6
    const-string/jumbo v1, "DataUsage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 765
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "data_usage_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 766
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 767
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 768
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 772
    :cond_8
    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 773
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 774
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 775
    :cond_9
    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 776
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 777
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 778
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_a
    const-string/jumbo v1, "MobileHotspotAndTethering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 782
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get6(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 783
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 784
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 785
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 786
    :cond_c
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 788
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 789
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 790
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
