.class Lcom/samsung/android/settings/SmartStaySettings$2;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SmartStaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SmartStaySettings;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SmartStayOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 325
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 331
    :cond_3
    const-string/jumbo v1, "SmartStayOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 337
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SmartStay"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$2;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
