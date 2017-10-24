.class Lcom/samsung/android/settings/notification/VolumeSettings$3;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeSettings;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    .line 680
    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 682
    .local v8, "stateId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 683
    .local v7, "mSetValue":I
    const/4 v5, 0x0

    .line 684
    .local v5, "mMaxValue":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 678
    :goto_0
    return-void

    .line 686
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 687
    const-string/jumbo v13, "VolumeRingtoneLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v13

    if-nez v13, :cond_2

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Exists"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 792
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 695
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 703
    .local v11, "volumeRingtonePrm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v11

    div-int/lit8 v7, v13, 0x64

    .line 704
    if-ltz v11, :cond_3

    .line 702
    const/16 v13, 0x64

    .line 704
    if-le v11, v13, :cond_4

    .line 705
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 696
    .end local v11    # "volumeRingtonePrm":I
    :catch_0
    move-exception v2

    .line 697
    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 700
    return-void

    .line 708
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "volumeRingtonePrm":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v7, v13, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 720
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 723
    .end local v11    # "volumeRingtonePrm":I
    :cond_7
    const-string/jumbo v13, "VolumeRingtoneUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 724
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 729
    :cond_8
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 730
    .local v3, "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 731
    .local v4, "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_9

    .line 734
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 737
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 741
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 743
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_b
    const-string/jumbo v13, "VolumeRingtoneDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_c

    .line 745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 749
    :cond_c
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 750
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 751
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_d

    .line 754
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 757
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 761
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 763
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_f
    const-string/jumbo v13, "VolumeRingtoneMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_10

    .line 765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 769
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    .line 770
    .local v6, "mMaxVolume":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 775
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 777
    .end local v6    # "mMaxVolume":I
    :cond_12
    const-string/jumbo v13, "VolumeRingtoneMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_13

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 790
    :goto_2
    const-string/jumbo v13, "VolumeSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ringtone volume newValue is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getProgress()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 783
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 788
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 794
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 798
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 799
    const-string/jumbo v13, "VolumeMediaLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 802
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 809
    .local v10, "volumeMediaPrm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v10

    div-int/lit8 v7, v13, 0x64

    .line 810
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v7, :cond_17

    .line 811
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 875
    .end local v10    # "volumeMediaPrm":I
    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 803
    :catch_1
    move-exception v2

    .line 804
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 807
    return-void

    .line 816
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "volumeMediaPrm":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 822
    .end local v10    # "volumeMediaPrm":I
    :cond_18
    const-string/jumbo v13, "VolumeMediaUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    .line 823
    if-ne v13, v14, :cond_19

    .line 825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 829
    :cond_19
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 830
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 831
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 837
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_1a
    const-string/jumbo v13, "VolumeMediaDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_1b

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 843
    :cond_1b
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 844
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 845
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 851
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_1c
    const-string/jumbo v13, "VolumeMediaMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    .line 853
    .restart local v6    # "mMaxVolume":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v6, :cond_1d

    .line 854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 858
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 863
    .end local v6    # "mMaxVolume":I
    :cond_1e
    const-string/jumbo v13, "VolumeMediaMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_1f

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 869
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 870
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 877
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 881
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 882
    const-string/jumbo v13, "VolumeNotificationsLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 885
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    .line 892
    .local v9, "volumeAlarmPrm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v9

    div-int/lit8 v7, v13, 0x64

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v7, :cond_22

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 966
    .end local v9    # "volumeAlarmPrm":I
    :cond_21
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 886
    :catch_2
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 890
    return-void

    .line 899
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "volumeAlarmPrm":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 905
    .end local v9    # "volumeAlarmPrm":I
    :cond_23
    const-string/jumbo v13, "VolumeNotificationsUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 906
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    .line 907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    .line 906
    if-ne v13, v14, :cond_24

    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 912
    :cond_24
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 913
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 914
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_25

    .line 917
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 918
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 920
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 924
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_26
    const-string/jumbo v13, "VolumeNotificationsDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 925
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_27

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 930
    :cond_27
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 931
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 932
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_28

    .line 935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 938
    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 942
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_29
    const-string/jumbo v13, "VolumeNotificationsMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 943
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    .line 944
    .restart local v6    # "mMaxVolume":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v6, :cond_2a

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 949
    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 950
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 954
    .end local v6    # "mMaxVolume":I
    :cond_2b
    const-string/jumbo v13, "VolumeNotificationsMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_2c

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 960
    :cond_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "notificationsVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    .line 968
    :cond_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 972
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 973
    const-string/jumbo v13, "VolumeSystemLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 976
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    .line 983
    .local v12, "volumeSystemPrm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v12

    div-int/lit8 v7, v13, 0x64

    .line 984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v7, :cond_2f

    .line 985
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1057
    .end local v12    # "volumeSystemPrm":I
    :cond_2e
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 977
    :catch_3
    move-exception v2

    .line 978
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 981
    return-void

    .line 990
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "volumeSystemPrm":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 991
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 996
    .end local v12    # "volumeSystemPrm":I
    :cond_30
    const-string/jumbo v13, "VolumeSystemUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    .line 997
    if-ne v13, v14, :cond_31

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1003
    :cond_31
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1004
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1005
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_32

    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1011
    :cond_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1015
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_33
    const-string/jumbo v13, "VolumeSystemDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 1016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_34

    .line 1017
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1021
    :cond_34
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1022
    .restart local v3    # "event":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1023
    .restart local v4    # "event2":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_35

    .line 1026
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1029
    :cond_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1033
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v4    # "event2":Landroid/view/KeyEvent;
    :cond_36
    const-string/jumbo v13, "VolumeSystemMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 1034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    .line 1035
    .restart local v6    # "mMaxVolume":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v6, :cond_37

    .line 1036
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1040
    :cond_37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1045
    .end local v6    # "mMaxVolume":I
    :cond_38
    const-string/jumbo v13, "VolumeSystemMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 1046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_39

    .line 1047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1051
    :cond_39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 1052
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    .line 1059
    :cond_3a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
