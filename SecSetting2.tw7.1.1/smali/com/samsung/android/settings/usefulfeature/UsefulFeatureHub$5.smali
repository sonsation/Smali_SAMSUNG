.class Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 898
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 900
    .local v0, "nlgString":Ljava/lang/String;
    const-string/jumbo v2, "SmartCaptureOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PalmSwipeToCaptureOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 901
    const-string/jumbo v2, "DirectCallOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 900
    if-nez v2, :cond_0

    .line 901
    const-string/jumbo v2, "SmartAlertOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 900
    if-nez v2, :cond_0

    .line 902
    const-string/jumbo v2, "EasyMuteOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 900
    if-nez v2, :cond_0

    .line 902
    const-string/jumbo v2, "DirectShareOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 900
    if-nez v2, :cond_0

    .line 903
    const-string/jumbo v2, "SwipeToCallorSendMessagesOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 900
    if-eqz v2, :cond_6

    .line 904
    :cond_0
    const-string/jumbo v2, "PalmSwipeToCaptureOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 905
    const-string/jumbo v0, "PalmSwipeCapture"

    .line 911
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 912
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 947
    :cond_1
    :goto_1
    return-void

    .line 906
    :cond_2
    const-string/jumbo v2, "SwipeToCallorSendMessagesOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    const-string/jumbo v0, "SwipeToCallorMessage"

    goto :goto_0

    .line 909
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 917
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 918
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 921
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 923
    :cond_6
    const-string/jumbo v2, "SmartCaptureOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "PalmSwipeToCaptureOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 924
    const-string/jumbo v2, "DirectCallOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 923
    if-nez v2, :cond_7

    .line 924
    const-string/jumbo v2, "SmartAlertOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 923
    if-nez v2, :cond_7

    .line 925
    const-string/jumbo v2, "EasyMuteOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 923
    if-nez v2, :cond_7

    .line 925
    const-string/jumbo v2, "DirectShareOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 923
    if-nez v2, :cond_7

    .line 926
    const-string/jumbo v2, "SwipeToCallorSendMessagesOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 923
    if-eqz v2, :cond_1

    .line 927
    :cond_7
    const-string/jumbo v2, "PalmSwipeToCaptureOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 928
    const-string/jumbo v0, "PalmSwipeCapture"

    .line 934
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_a

    .line 935
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 929
    :cond_8
    const-string/jumbo v2, "SwipeToCallorSendMessagesOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 930
    const-string/jumbo v0, "SwipeToCallorMessage"

    goto :goto_2

    .line 932
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 939
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    .line 940
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 941
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 944
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
