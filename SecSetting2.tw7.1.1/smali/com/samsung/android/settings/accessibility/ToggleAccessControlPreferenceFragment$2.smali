.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 471
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "InteractionControlOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 474
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 475
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 476
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 477
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControlState"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 480
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 483
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControlState"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 486
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 488
    :cond_4
    const-string/jumbo v6, "InteractionControlOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 489
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 490
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 491
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 492
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControlState"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 495
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 497
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 498
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControlState"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 501
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 503
    :cond_8
    const-string/jumbo v6, "UseScreenLockTypeToDisableOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 504
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 506
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_c

    .line 507
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 509
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 508
    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 510
    .local v4, "passwordQuality":I
    if-eqz v4, :cond_a

    .line 511
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    .line 512
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 513
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 514
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenUnlockSetting"

    const-string/jumbo v8, "AlreadyAdded"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 517
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 519
    :cond_a
    new-instance v0, Landroid/content/Intent;

    .line 520
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    .line 519
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    .line 523
    .local v3, "miniumQuality":I
    const-string/jumbo v6, "minimum_quality"

    .line 522
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string/jumbo v6, "skipFingerprintPassword"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .line 528
    const/16 v7, 0x2b

    .line 527
    invoke-virtual {v6, v0, v7}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 534
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenUnlockSetting"

    const-string/jumbo v8, "AlreadyAdded"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 537
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 540
    .end local v0    # "chooseLockIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "miniumQuality":I
    .end local v4    # "passwordQuality":I
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 541
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "UseScreenLovkTypeToDisable"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 544
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 546
    :cond_e
    const-string/jumbo v6, "UseScreenLockTypeToDisableOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 549
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 550
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6, v8}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    .line 551
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 552
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 553
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "UseScreenLovkTypeToDisable"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 556
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 558
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 559
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "UseScreenLovkTypeToDisable"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "InteractionControl"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 562
    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
