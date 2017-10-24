.class Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;
.super Ljava/lang/Object;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 517
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "DirectionLockOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 520
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 521
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 522
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 524
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 528
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 531
    :cond_2
    const-string/jumbo v4, "DirectionLockOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 534
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 536
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 540
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 543
    :cond_4
    const-string/jumbo v4, "DirectionLockSettingsOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 544
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    .line 546
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockState"

    const-string/jumbo v6, "State"

    const-string/jumbo v7, "off"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 548
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 549
    return-void

    .line 552
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParameters()Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, "mEmParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v4}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "paramString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 556
    .local v0, "isNLGSuccess":Z
    const-string/jumbo v4, "DirectionLockSplashActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DirectionLockSettingsOn : param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string/jumbo v4, "Vibration feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 561
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 562
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : Vibration feedback isChecked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x0

    .line 592
    :cond_6
    :goto_1
    if-eqz v0, :cond_f

    .line 593
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : isNLGSuccess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 595
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 598
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 558
    :cond_8
    const-string/jumbo v4, "Sound feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 570
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 571
    const/4 v0, 0x0

    goto :goto_1

    .line 558
    :cond_9
    const-string/jumbo v4, "Show directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 577
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 578
    const/4 v0, 0x0

    goto :goto_1

    .line 558
    :cond_a
    const-string/jumbo v4, "Read out drawn directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 584
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 585
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 565
    :cond_b
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : Vibration feedback not isChecked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 573
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 580
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 587
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 600
    :cond_f
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn isNLGSuccess not "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 606
    .end local v0    # "isNLGSuccess":Z
    .end local v1    # "mEmParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    .end local v2    # "paramString":Ljava/lang/String;
    :cond_10
    const-string/jumbo v4, "DirectionLockSettingsOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_11

    .line 608
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockState"

    const-string/jumbo v6, "State"

    const-string/jumbo v7, "off"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 611
    return-void

    .line 613
    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParameters()Ljava/util/List;

    move-result-object v1

    .line 614
    .restart local v1    # "mEmParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v4}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    .line 615
    .restart local v2    # "paramString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 617
    .restart local v0    # "isNLGSuccess":Z
    const-string/jumbo v4, "Vibration feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 619
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_17

    .line 620
    const/4 v0, 0x0

    .line 648
    :cond_12
    :goto_2
    if-eqz v0, :cond_1b

    .line 649
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 650
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 654
    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 617
    :cond_14
    const-string/jumbo v4, "Sound feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 626
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_18

    .line 627
    const/4 v0, 0x0

    goto :goto_2

    .line 617
    :cond_15
    const-string/jumbo v4, "Show directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 633
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_19

    .line 634
    const/4 v0, 0x0

    goto :goto_2

    .line 617
    :cond_16
    const-string/jumbo v4, "Read out drawn directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 640
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 641
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 622
    :cond_17
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_2

    .line 629
    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_2

    .line 636
    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_2

    .line 643
    :cond_1a
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_2

    .line 656
    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 658
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
