.class Lcom/samsung/android/settings/dualclock/DualClockSetting$1;
.super Ljava/lang/Object;
.source "DualClockSetting.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dualclock/DualClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dualclock/DualClockSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/dualclock/DualClockSetting;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "RoamingClockOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 409
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 416
    :cond_4
    const-string/jumbo v1, "RoamingClockOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 417
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 421
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 423
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 427
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 428
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 432
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 435
    :cond_8
    const-string/jumbo v1, "SetHomeTimeZone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 436
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 437
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 441
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-virtual {v2}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 442
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 443
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 446
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 448
    :cond_b
    const-string/jumbo v1, "SetHomeTimeZoneSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
