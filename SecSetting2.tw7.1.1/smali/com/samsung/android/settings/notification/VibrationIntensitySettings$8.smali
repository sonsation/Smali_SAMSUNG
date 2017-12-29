.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;
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
    .line 426
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doAction(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 22
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 429
    const/4 v13, 0x0

    .line 430
    .local v13, "mSetValue":I
    const/4 v10, 0x0

    .line 431
    .local v10, "mMaxValue":I
    const/4 v9, 0x0

    .line 432
    .local v9, "mLastValue":I
    const/4 v14, 0x0

    .line 433
    .local v14, "mVolumePrm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v16

    .line 435
    .local v16, "target":Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    if-eqz v16, :cond_24

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v18

    if-eqz v18, :cond_24

    .line 436
    const-string/jumbo v18, "Level"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 439
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 447
    if-ltz v14, :cond_0

    const/16 v18, 0x64

    move/from16 v0, v18

    if-le v14, v0, :cond_a

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    return-void

    .line 436
    :cond_1
    const-string/jumbo v18, "UpByPercentage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v18

    if-nez v18, :cond_e

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Exist"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 635
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    :goto_2
    return-void

    .line 436
    :cond_3
    const-string/jumbo v18, "DownByPercentage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v18

    if-nez v18, :cond_14

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Exist"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 436
    :cond_4
    const-string/jumbo v18, "Up"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 546
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 436
    :cond_5
    const-string/jumbo v18, "Down"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 559
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-nez v18, :cond_1b

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 436
    :cond_6
    const-string/jumbo v18, "Max"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 573
    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 574
    const/4 v7, 0x1

    .line 575
    .local v7, "isAlreadyMaxAll":Z
    const/16 v17, 0x0

    .local v17, "tmpEventId":I
    :goto_6
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    .line 576
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v15

    .line 578
    .local v15, "nextTarget":Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    .line 579
    .local v11, "mMaxVolume":I
    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v11, :cond_7

    .line 580
    const/4 v7, 0x0

    .line 581
    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 575
    .end local v11    # "mMaxVolume":I
    .end local v15    # "nextTarget":Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 436
    .end local v7    # "isAlreadyMaxAll":Z
    .end local v17    # "tmpEventId":I
    :cond_8
    const-string/jumbo v18, "Min"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 605
    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    .line 606
    const/4 v8, 0x1

    .line 607
    .local v8, "isAlreadyMinAll":Z
    const/16 v17, 0x0

    .restart local v17    # "tmpEventId":I
    :goto_7
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_20

    .line 608
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v15

    .line 610
    .restart local v15    # "nextTarget":Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-eqz v18, :cond_9

    .line 611
    const/4 v8, 0x0

    .line 612
    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 607
    .end local v15    # "nextTarget":Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 440
    .end local v8    # "isAlreadyMinAll":Z
    .end local v17    # "tmpEventId":I
    :catch_0
    move-exception v4

    .line 441
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    return-void

    .line 454
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 455
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    mul-int v18, v18, v14

    div-int/lit8 v12, v18, 0x64

    .line 456
    .local v12, "mPercentValue":I
    if-nez v14, :cond_c

    .line 457
    const/4 v12, 0x0

    .line 463
    :cond_b
    :goto_8
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v12, :cond_d

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 459
    :cond_c
    if-nez v12, :cond_b

    .line 460
    const/4 v12, 0x1

    goto :goto_8

    .line 466
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 478
    .end local v12    # "mPercentValue":I
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 485
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 487
    mul-int v18, v9, v14

    div-int/lit8 v13, v18, 0x64

    .line 488
    add-int/2addr v13, v9

    .line 490
    if-lez v14, :cond_f

    .line 486
    const/16 v18, 0x64

    .line 490
    move/from16 v0, v18

    if-le v14, v0, :cond_10

    .line 491
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :catch_1
    move-exception v4

    .line 480
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 483
    return-void

    .line 492
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_11

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    :cond_11
    if-ne v9, v13, :cond_12

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    move/from16 v0, v18

    if-le v13, v0, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    .line 500
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_14
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 522
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 524
    mul-int v18, v9, v14

    div-int/lit8 v13, v18, 0x64

    .line 525
    sub-int v13, v9, v13

    .line 527
    if-lez v14, :cond_15

    .line 523
    const/16 v18, 0x64

    .line 527
    move/from16 v0, v18

    if-le v14, v0, :cond_16

    .line 528
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 516
    :catch_2
    move-exception v4

    .line 517
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 520
    return-void

    .line 529
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    if-nez v9, :cond_17

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 532
    :cond_17
    if-gez v13, :cond_18

    const/4 v13, 0x0

    .line 533
    :cond_18
    if-ne v9, v13, :cond_19

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 536
    :cond_19
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 549
    :cond_1a
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 550
    .local v5, "event":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 551
    .local v6, "event2":Landroid/view/KeyEvent;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 552
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 562
    .end local v5    # "event":Landroid/view/KeyEvent;
    .end local v6    # "event2":Landroid/view/KeyEvent;
    :cond_1b
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 563
    .restart local v5    # "event":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 564
    .restart local v6    # "event2":Landroid/view/KeyEvent;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 565
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 585
    .end local v5    # "event":Landroid/view/KeyEvent;
    .end local v6    # "event2":Landroid/view/KeyEvent;
    .restart local v7    # "isAlreadyMaxAll":Z
    .restart local v17    # "tmpEventId":I
    :cond_1c
    if-eqz v7, :cond_1d

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .end local v7    # "isAlreadyMaxAll":Z
    .end local v17    # "tmpEventId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 588
    .restart local v7    # "isAlreadyMaxAll":Z
    .restart local v17    # "tmpEventId":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 592
    .end local v7    # "isAlreadyMaxAll":Z
    .end local v17    # "tmpEventId":I
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 595
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    .line 596
    .restart local v11    # "mMaxVolume":I
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 616
    .end local v11    # "mMaxVolume":I
    .restart local v8    # "isAlreadyMinAll":Z
    .restart local v17    # "tmpEventId":I
    :cond_20
    if-eqz v8, :cond_21

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v8    # "isAlreadyMinAll":Z
    .end local v17    # "tmpEventId":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 619
    .restart local v8    # "isAlreadyMinAll":Z
    .restart local v17    # "tmpEventId":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 623
    .end local v8    # "isAlreadyMinAll":Z
    .end local v17    # "tmpEventId":I
    :cond_22
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-nez v18, :cond_23

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_c
    const-string/jumbo v18, "VibrationIntensity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, p2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " newValue is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getProgress()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 626
    :cond_23
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 637
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v20, 0x64

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 643
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    :cond_0
    return-void

    .line 644
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 647
    .local v1, "stateId":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0()[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2

    .line 648
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 649
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 650
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    return-void

    .line 654
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 642
    :cond_3
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "foundAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 662
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->doAction(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
