.class Lcom/samsung/android/settings/nfc/AndroidBeam$2;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/AndroidBeam;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 372
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "NfcAndroidBeamSettingsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AndroidBeam"

    const-string/jumbo v3, "TurnedOn"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NfcAndroidBeamSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AndroidBeam"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NfcAndroidBeamSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 388
    :cond_3
    const-string/jumbo v1, "NfcAndroidBeamSettingsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AndroidBeam"

    const-string/jumbo v3, "TurnedOff"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NfcAndroidBeamSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 396
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 398
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AndroidBeam"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NfcAndroidBeamSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method