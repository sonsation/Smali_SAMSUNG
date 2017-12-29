.class Lcom/samsung/android/settings/iris/IrisLockSettings$3;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisLockSettings;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    .line 1117
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "IrisLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1120
    .local v0, "MY_USER_ID":I
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get2(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 1121
    .local v2, "isSecure":Z
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    .line 1123
    :goto_0
    const-string/jumbo v4, "IrisesEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1124
    if-eqz v2, :cond_1

    .line 1125
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "ScreenLockType"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "LockscreenAndSecurity"

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 1138
    :goto_1
    return-void

    .line 1121
    :cond_0
    const/4 v1, 0x0

    .local v1, "isEnrolledIrises":Z
    goto :goto_0

    .line 1128
    .end local v1    # "isEnrolledIrises":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1129
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricsData"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "LockscreenAndSecurity"

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    .line 1132
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricsData"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IrisesEntry"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1134
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 1135
    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1134
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 1116
    :cond_3
    return-void
.end method
