.class Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;
.super Ljava/lang/Object;
.source "HDReffectSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 291
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "VideoEnhancerOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 308
    :cond_4
    const-string/jumbo v1, "VideoEnhancerOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 310
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 314
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 316
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 317
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 321
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
