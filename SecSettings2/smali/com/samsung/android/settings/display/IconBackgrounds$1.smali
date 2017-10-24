.class Lcom/samsung/android/settings/display/IconBackgrounds$1;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/IconBackgrounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/IconBackgrounds;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/IconBackgrounds;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/IconBackgrounds;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "IconFrameOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get2(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 242
    :cond_3
    const-string/jumbo v1, "IconFrameOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get2(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    goto/16 :goto_0

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
