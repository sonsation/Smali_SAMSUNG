.class Lcom/samsung/android/settings/display/SecDisplaySettings$20;
.super Landroid/os/Handler;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;

    .prologue
    .line 3240
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 3243
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 3244
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3246
    .local v3, "stateId":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3242
    :goto_0
    return-void

    .line 3248
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getInitFinish()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3249
    const-string/jumbo v4, "DisplayBrightnessLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3250
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-nez v4, :cond_2

    .line 3251
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3253
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 3378
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3255
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3258
    .local v0, "currentValue":I
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3265
    .local v2, "progress":I
    div-int/lit8 v4, v0, 0x64

    if-ne v4, v2, :cond_3

    .line 3266
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3269
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 3259
    .end local v2    # "progress":I
    :catch_0
    move-exception v1

    .line 3260
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3262
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 3263
    return-void

    .line 3271
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "progress":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    .line 3272
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3273
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3277
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3280
    .end local v0    # "currentValue":I
    .end local v2    # "progress":I
    :cond_5
    const-string/jumbo v4, "DisplayBrightnessUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3281
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3282
    .restart local v0    # "currentValue":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 3283
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3285
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3288
    :cond_6
    add-int/lit16 v0, v0, 0x3e8

    .line 3289
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    div-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    .line 3290
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3291
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3294
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3296
    .end local v0    # "currentValue":I
    :cond_8
    const-string/jumbo v4, "DisplayBrightnessDown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3297
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3298
    .restart local v0    # "currentValue":I
    if-gtz v0, :cond_9

    .line 3299
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3301
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3304
    :cond_9
    add-int/lit16 v0, v0, -0x3e8

    .line 3305
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    div-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    .line 3306
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3307
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3310
    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3312
    .end local v0    # "currentValue":I
    :cond_b
    const-string/jumbo v4, "DisplayBrightnessMax"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3313
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3314
    .restart local v0    # "currentValue":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v0, v4, :cond_c

    .line 3315
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3317
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3319
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    .line 3320
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3321
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3324
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3326
    .end local v0    # "currentValue":I
    :cond_e
    const-string/jumbo v4, "DisplayBrightnessMin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3327
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3328
    .restart local v0    # "currentValue":I
    if-gtz v0, :cond_f

    .line 3329
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3331
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3333
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    .line 3334
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3335
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3338
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3340
    .end local v0    # "currentValue":I
    :cond_11
    const-string/jumbo v4, "DisplayBrightnessAutoOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "DisplayBrightnessAutoOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3341
    :cond_12
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3346
    const-string/jumbo v4, "DisplayBrightnessAutoOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3347
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_15

    .line 3348
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 3349
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3350
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3353
    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3343
    :cond_14
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 3344
    return-void

    .line 3355
    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3356
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3359
    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3362
    :cond_17
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3363
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 3364
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3365
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3368
    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3370
    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3371
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 3374
    :cond_1a
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 3380
    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
