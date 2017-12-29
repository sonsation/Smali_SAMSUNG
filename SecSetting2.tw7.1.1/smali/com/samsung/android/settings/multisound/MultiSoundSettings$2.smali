.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;
.super Ljava/lang/Object;
.source "MultiSoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SeparateAppSoundOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 349
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "TurnedOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 341
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string/jumbo v1, "SeparateAppSoundOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 362
    return-void

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "TurnedOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 374
    return-void

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "TurnedOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SeparateappsoundSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
