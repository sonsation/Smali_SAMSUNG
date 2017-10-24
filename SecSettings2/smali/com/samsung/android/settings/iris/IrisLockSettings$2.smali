.class Lcom/samsung/android/settings/iris/IrisLockSettings$2;
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
    .line 963
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    .line 966
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, "stateId":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 968
    .local v0, "MY_USER_ID":I
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get2(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 969
    .local v2, "isSecure":Z
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    .line 971
    :goto_0
    const-string/jumbo v4, "IrisesEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 972
    if-eqz v2, :cond_1

    .line 973
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "ScreenLockType"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 975
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 976
    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 975
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 992
    :goto_1
    return-void

    .line 969
    :cond_0
    const/4 v1, 0x0

    .local v1, "isEnrolledIrises":Z
    goto :goto_0

    .line 978
    .end local v1    # "isEnrolledIrises":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 979
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricData"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 981
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 982
    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 981
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 984
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 985
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricsData"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IrisesEntry"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 988
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 989
    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 988
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 965
    :cond_4
    return-void
.end method
