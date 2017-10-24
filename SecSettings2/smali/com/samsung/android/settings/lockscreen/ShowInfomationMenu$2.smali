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
    .line 501
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 504
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "RoamingClock"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 506
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 508
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 511
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 513
    :cond_2
    const-string/jumbo v6, "QuickTools"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 514
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 516
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 518
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get7(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 519
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 521
    :cond_4
    const-string/jumbo v6, "ContactInformation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 522
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get0()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 523
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 527
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_0

    .line 528
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "infoText":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 530
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 531
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 533
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 525
    .end local v1    # "infoText":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 535
    .restart local v1    # "infoText":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isResumed()Z

    move-result v6

    if-nez v6, :cond_9

    .line 536
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 537
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 536
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 538
    return-void

    .line 540
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 542
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 544
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 546
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 547
    .local v5, "useQuicktools":Z
    const v4, 0x7f0b10b1

    .line 548
    .local v4, "titleRes":I
    if-eqz v5, :cond_b

    .line 549
    const v4, 0x7f0b08d7

    .line 551
    :cond_b
    invoke-static {v4, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v2

    .line 552
    .local v2, "newFragment":Landroid/app/DialogFragment;
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "dialog"

    invoke-virtual {v2, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 553
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 554
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 557
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 562
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "infoText":Ljava/lang/String;
    .end local v2    # "newFragment":Landroid/app/DialogFragment;
    .end local v4    # "titleRes":I
    .end local v5    # "useQuicktools":Z
    :cond_d
    const-string/jumbo v6, "AppShortcuts"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 563
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 564
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 565
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 569
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 570
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 567
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
