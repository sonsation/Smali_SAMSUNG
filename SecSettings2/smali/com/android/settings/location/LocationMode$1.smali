.class Lcom/android/settings/location/LocationMode$1;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const v8, 0x7f0b13f8

    const v7, 0x7f0b13f9

    const/4 v6, 0x0

    .line 321
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "LocationMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateReceived : stateId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-wrap0(Lcom/android/settings/location/LocationMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "mode":I
    const-string/jumbo v3, "SetLocatingMethod"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_a

    .line 328
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v3, "High accuracy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 335
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 334
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 396
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v0    # "method":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get2(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V

    .line 343
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 344
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 343
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 347
    :cond_3
    const-string/jumbo v3, "Battery saving"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 349
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 353
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 352
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 355
    :cond_4
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 360
    :cond_5
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get0(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V

    .line 361
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 362
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 361
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 364
    :cond_6
    const-string/jumbo v3, "Device only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 365
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 366
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 370
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 369
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 372
    :cond_7
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 373
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v5}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b13fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 377
    :cond_8
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get3(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 379
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 378
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 383
    :cond_9
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    .line 386
    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 385
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 390
    .end local v0    # "method":Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 393
    return-void
.end method
