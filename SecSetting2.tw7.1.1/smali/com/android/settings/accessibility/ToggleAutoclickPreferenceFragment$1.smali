.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/16 v9, 0x258

    const/16 v8, 0x3e8

    const/16 v7, 0xc8

    const/4 v6, 0x1

    .line 345
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "stateId":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ToggleAutoclickPreference stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string/jumbo v3, "AutoClickAfterPointerStopsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 362
    :cond_3
    const-string/jumbo v3, "AutoClickAfterPointerStopsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 363
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    .line 364
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 369
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 373
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 375
    :cond_6
    const-string/jumbo v3, "DelayBeforeClickMaxSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 376
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 377
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 380
    :cond_7
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 381
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 382
    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 381
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v4, v8}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 388
    :cond_8
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 389
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 391
    :cond_9
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 392
    :cond_a
    const-string/jumbo v3, "DelayBeforeClickMinSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 393
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    .line 394
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 397
    :cond_b
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 398
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 399
    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 398
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v4, v7}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 404
    :cond_c
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 405
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 407
    :cond_d
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 408
    :cond_e
    const-string/jumbo v3, "DelayBeforeClickIncreaseSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 409
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_f

    .line 410
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 413
    :cond_f
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 415
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 414
    invoke-static {v3, v4, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 418
    .local v0, "delay":I
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    .line 419
    .local v1, "progressDelay":I
    add-int/lit8 v1, v1, 0x1

    .line 421
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v3

    if-le v3, v8, :cond_10

    .line 422
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v8}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    .line 425
    :cond_10
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 426
    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 427
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v5, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v5

    .line 425
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 429
    invoke-static {}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DelayBeforeClickIncreaseSet progressDelay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "delay":I
    .end local v1    # "progressDelay":I
    :cond_11
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 433
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 435
    :cond_12
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 436
    :cond_13
    const-string/jumbo v3, "DelayBeforeClickDecreaseSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_14

    .line 438
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 441
    :cond_14
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 443
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 442
    invoke-static {v3, v4, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .restart local v0    # "delay":I
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    .line 447
    .restart local v1    # "progressDelay":I
    add-int/lit8 v1, v1, -0x1

    .line 449
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v3

    if-ge v3, v7, :cond_15

    .line 450
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v7}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    .line 453
    :cond_15
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 454
    const-string/jumbo v4, "accessibility_autoclick_delay"

    .line 455
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v5, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v5

    .line 453
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 457
    invoke-static {}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DelayBeforeClickDecreaseSet progressDelay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "delay":I
    .end local v1    # "progressDelay":I
    :cond_16
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 461
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 463
    :cond_17
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
