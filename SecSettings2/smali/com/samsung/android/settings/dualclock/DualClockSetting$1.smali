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
    .line 365
    iput-object p1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "RoamingClockOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 381
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 388
    :cond_4
    const-string/jumbo v1, "RoamingClockOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 393
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 395
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 399
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 400
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 404
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 407
    :cond_8
    const-string/jumbo v1, "SetHomeTimeZone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 408
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 410
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-virtual {v2}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 413
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 415
    :cond_a
    const-string/jumbo v1, "SetHomeTimeZoneSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
