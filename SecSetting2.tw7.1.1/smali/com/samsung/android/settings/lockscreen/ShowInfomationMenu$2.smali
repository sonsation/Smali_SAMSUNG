.class Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;
.super Ljava/lang/Object;
.source "ShowInfomationMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 612
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "RoamingClock"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 614
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 615
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 617
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 620
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 621
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 624
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 626
    :cond_3
    const-string/jumbo v6, "FaceWidgets"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 627
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 629
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 631
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 632
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 633
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LockscreenAndSecurity"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 636
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 638
    :cond_6
    const-string/jumbo v6, "ContactInformation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 639
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get7(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get0()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 640
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 644
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "infoText":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 647
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get7(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 648
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InformationAndFacewidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 650
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 642
    .end local v1    # "infoText":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 652
    .restart local v1    # "infoText":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isResumed()Z

    move-result v6

    if-nez v6, :cond_b

    .line 653
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 654
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 653
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 655
    return-void

    .line 658
    :cond_b
    const/4 v0, 0x0

    .line 659
    .local v0, "info":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 660
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "info":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 666
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InformationAndFacewidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 669
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 662
    .local v0, "info":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_1

    .line 671
    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 672
    .local v5, "useFaceWidgets":Z
    const v4, 0x7f0b141d

    .line 673
    .local v4, "titleRes":I
    if-eqz v5, :cond_e

    .line 674
    const v4, 0x7f0b0a8c

    .line 676
    :cond_e
    invoke-static {v4, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v2

    .line 677
    .local v2, "newFragment":Landroid/app/DialogFragment;
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "dialog"

    invoke-virtual {v2, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 678
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 679
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InformationAndFacewidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 683
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 688
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "infoText":Ljava/lang/String;
    .end local v2    # "newFragment":Landroid/app/DialogFragment;
    .end local v4    # "titleRes":I
    .end local v5    # "useFaceWidgets":Z
    :cond_10
    const-string/jumbo v6, "AppShortcuts"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 690
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 691
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 695
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 696
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 693
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
