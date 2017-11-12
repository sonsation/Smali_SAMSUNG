.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    .prologue
    .line 2719
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2722
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 2723
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "UnknownSourcesOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2724
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2726
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2890
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2729
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "UnknownSources"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2731
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2733
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2734
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2735
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "UnknownSources"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2738
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2741
    :cond_4
    const-string/jumbo v4, "UnknownSourcesOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2742
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2744
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2746
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2748
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "UnknownSources"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2750
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2752
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2753
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2754
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "UnknownSources"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2757
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2760
    :cond_8
    const-string/jumbo v4, "OtherSecuritySettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2761
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->hasKey()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2763
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2765
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2766
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2768
    :cond_a
    const-string/jumbo v4, "Irises"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2769
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2770
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    .line 2769
    if-nez v4, :cond_b

    .line 2770
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 2769
    if-eqz v4, :cond_c

    .line 2772
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2774
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2775
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2777
    :cond_d
    const-string/jumbo v4, "Fingerprints"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2778
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2779
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    .line 2778
    if-nez v4, :cond_e

    .line 2779
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    .line 2778
    if-eqz v4, :cond_f

    .line 2781
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2783
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2784
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setClientVisibility(Z)V

    .line 2785
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2787
    :cond_10
    const-string/jumbo v4, "ScreenLockType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2788
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    if-nez v4, :cond_11

    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2790
    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2792
    :cond_12
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2794
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2796
    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2797
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2798
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenLock"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2802
    :cond_14
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2803
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2804
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenLock"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenLockType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2807
    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2811
    :cond_16
    const-string/jumbo v4, "SmartLock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2812
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2813
    :cond_17
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SecuredLockType"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2815
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2817
    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2818
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2819
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SecuredLockType"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SmartLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2822
    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2825
    :cond_1a
    const-string/jumbo v4, "AppShortcuts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2826
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2830
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2831
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2828
    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2833
    :cond_1c
    const-string/jumbo v4, "InformationAndQuickTools"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2834
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 2835
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    .line 2834
    if-eqz v4, :cond_1d

    .line 2837
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2839
    :cond_1d
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2840
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2842
    :cond_1e
    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2843
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2845
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2847
    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2848
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2849
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2851
    :cond_20
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2852
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2855
    :cond_21
    const-string/jumbo v4, "AlwaysOnDisplay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2856
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get21()Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 2857
    .local v0, "bPowerSaving":Z
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_contrast"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_24

    const/4 v2, 0x1

    .line 2859
    .local v2, "isNegativeColorEnabled":Z
    :goto_1
    if-eqz v0, :cond_22

    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_23

    :cond_22
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 2861
    :cond_23
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2857
    .end local v2    # "isNegativeColorEnabled":Z
    :cond_24
    const/4 v2, 0x0

    .restart local v2    # "isNegativeColorEnabled":Z
    goto :goto_1

    .line 2859
    :cond_25
    if-nez v2, :cond_23

    .line 2863
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2864
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2865
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AlwaysOnDisplay"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2867
    :cond_26
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2870
    .end local v0    # "bPowerSaving":Z
    .end local v2    # "isNegativeColorEnabled":Z
    :cond_27
    const-string/jumbo v4, "SecureLockSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2871
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 2872
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SecuredLockType"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "LockSCreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2874
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2876
    :cond_28
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2877
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2880
    :cond_29
    const-string/jumbo v4, "EncryptSdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string/jumbo v4, "DecryptSdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2881
    :cond_2a
    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 2882
    .local v1, "dem":Lcom/samsung/android/security/SemSdCardEncryption;
    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2883
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2884
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2886
    :cond_2b
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
