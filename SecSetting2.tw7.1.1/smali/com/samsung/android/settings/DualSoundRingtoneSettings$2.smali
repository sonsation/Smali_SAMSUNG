.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    .line 569
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "stateId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    .local v1, "simSlotParam":I
    const-string/jumbo v3, "Ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 581
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 583
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 573
    .end local v1    # "simSlotParam":I
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 576
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 577
    return-void

    .line 585
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "simSlotParam":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 586
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get3(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 590
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 594
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 596
    :cond_4
    const-string/jumbo v3, "NotificationSounds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 598
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 602
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 603
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 604
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 607
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
