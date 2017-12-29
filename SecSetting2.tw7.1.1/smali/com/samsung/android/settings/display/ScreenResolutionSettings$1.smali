.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 198
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "ScreenResolutionApply"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 201
    const/4 v0, -0x1

    .line 202
    .local v0, "progressValue":I
    const-string/jumbo v1, ""

    .line 203
    .local v1, "screenMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string/jumbo v4, "HD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    const/4 v0, 0x0

    .line 214
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 215
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "Valid"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 272
    .end local v0    # "progressValue":I
    .end local v1    # "screenMode":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 208
    .restart local v0    # "progressValue":I
    .restart local v1    # "screenMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "FHD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_3
    const-string/jumbo v4, "WQHD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const/4 v0, 0x2

    goto :goto_0

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 220
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 225
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 226
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 231
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 232
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    .line 235
    .end local v0    # "progressValue":I
    .end local v1    # "screenMode":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "ScreenResolutionIncrease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 236
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    .line 237
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMax"

    .line 238
    const-string/jumbo v7, "yes"

    .line 237
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 242
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 243
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    .line 244
    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    .line 243
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 247
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 248
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 249
    .local v3, "value":I
    const-string/jumbo v4, "ScreenResolutionSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ScreenResolutionIncrease set progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 251
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    .line 253
    .end local v3    # "value":I
    :cond_a
    const-string/jumbo v4, "ScreenResolutionDecrease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    if-gtz v4, :cond_b

    .line 255
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMin"

    .line 256
    const-string/jumbo v7, "yes"

    .line 255
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 260
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 261
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    .line 262
    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    .line 261
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 265
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 266
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 267
    .restart local v3    # "value":I
    const-string/jumbo v4, "ScreenResolutionSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ScreenResolutionDecrease set progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 269
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1
.end method
