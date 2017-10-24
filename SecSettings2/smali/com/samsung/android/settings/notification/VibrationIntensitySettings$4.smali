.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
.super Landroid/os/Handler;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 335
    .local v5, "stateId":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 338
    const-string/jumbo v9, "VibrationIncommingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "VibrationIncomingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 341
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 346
    .local v7, "vibrationIncommingCallPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v7

    div-int/lit8 v4, v9, 0x64

    .line 347
    .local v4, "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 348
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 351
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 412
    .end local v4    # "mPercentValue":I
    .end local v7    # "vibrationIncommingCallPrm":I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 344
    return-void

    .line 353
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v7    # "vibrationIncommingCallPrm":I
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 354
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 357
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 359
    .end local v4    # "mPercentValue":I
    .end local v7    # "vibrationIncommingCallPrm":I
    :cond_4
    const-string/jumbo v9, "VibrationIncommingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "VibrationIncomingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 360
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 361
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 360
    if-ne v9, v10, :cond_6

    .line 362
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 364
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 366
    :cond_6
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 367
    .local v1, "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 368
    .local v2, "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 369
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 370
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 372
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 374
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_7
    const-string/jumbo v9, "VibrationIncommingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "VibrationIncomingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 375
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_9

    .line 376
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 378
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 380
    :cond_9
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 381
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 382
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 383
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 384
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 386
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 388
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_a
    const-string/jumbo v9, "VibrationIncommingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "VibrationIncomingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 389
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 390
    .local v3, "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_c

    .line 391
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 393
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 395
    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 396
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 398
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 400
    .end local v3    # "mMaxVolume":I
    :cond_d
    const-string/jumbo v9, "VibrationIncommingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "VibrationIncomingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 401
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_f

    .line 402
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 404
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 406
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 407
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 409
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 414
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 418
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 419
    const-string/jumbo v9, "VibrationNotifications"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 422
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 427
    .local v8, "vibrationNotificationPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v8

    div-int/lit8 v4, v9, 0x64

    .line 428
    .restart local v4    # "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_12

    .line 429
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 432
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 493
    .end local v4    # "mPercentValue":I
    .end local v8    # "vibrationNotificationPrm":I
    :cond_11
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 425
    return-void

    .line 434
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v8    # "vibrationNotificationPrm":I
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 435
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 438
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 440
    .end local v4    # "mPercentValue":I
    .end local v8    # "vibrationNotificationPrm":I
    :cond_13
    const-string/jumbo v9, "VibrationNotificationsUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 441
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 442
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 441
    if-ne v9, v10, :cond_14

    .line 443
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 445
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 447
    :cond_14
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 448
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 449
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 450
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 451
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 453
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 455
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_15
    const-string/jumbo v9, "VibrationNotificationsDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 456
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_16

    .line 457
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 459
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 461
    :cond_16
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 462
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 463
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 464
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 465
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 467
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 469
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_17
    const-string/jumbo v9, "VibrationNotificationsMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 470
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 471
    .restart local v3    # "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_18

    .line 472
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 474
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 476
    :cond_18
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 477
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 479
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 481
    .end local v3    # "mMaxVolume":I
    :cond_19
    const-string/jumbo v9, "VibrationNotificationsMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 482
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_1a

    .line 483
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 485
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 487
    :cond_1a
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 488
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 490
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 495
    :cond_1b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 499
    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 500
    const-string/jumbo v9, "VibrationFeedback"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 503
    :try_start_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 508
    .local v6, "vibrationFeedbackPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v6

    div-int/lit8 v4, v9, 0x64

    .line 509
    .restart local v4    # "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_1d

    .line 510
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 513
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 574
    .end local v4    # "mPercentValue":I
    .end local v6    # "vibrationFeedbackPrm":I
    :cond_1c
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 504
    :catch_2
    move-exception v0

    .line 505
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 506
    return-void

    .line 515
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v6    # "vibrationFeedbackPrm":I
    :cond_1d
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 516
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 519
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3

    .line 521
    .end local v4    # "mPercentValue":I
    .end local v6    # "vibrationFeedbackPrm":I
    :cond_1e
    const-string/jumbo v9, "VibrationFeedbackUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 522
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 523
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 522
    if-ne v9, v10, :cond_1f

    .line 524
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 526
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 528
    :cond_1f
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 529
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 530
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 531
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 532
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 534
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 536
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_20
    const-string/jumbo v9, "VibrationFeedbackDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 537
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_21

    .line 538
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 540
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 542
    :cond_21
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 543
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 544
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 545
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 546
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 548
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 550
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_22
    const-string/jumbo v9, "VibrationFeedbackMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 551
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 552
    .restart local v3    # "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_23

    .line 553
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 555
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 557
    :cond_23
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 558
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 560
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 562
    .end local v3    # "mMaxVolume":I
    :cond_24
    const-string/jumbo v9, "VibrationFeedbackMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 563
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_25

    .line 564
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 566
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 568
    :cond_25
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 569
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 571
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 576
    :cond_26
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
