.class Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BixbyManager"
.end annotation


# instance fields
.field private final DEFAULT_STATE_ID:Ljava/lang/String;

.field private mCurrentStateId:Ljava/lang/String;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    const-string/jumbo v0, "EncryptSDcard"

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->DEFAULT_STATE_ID:Ljava/lang/String;

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 865
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 866
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mCurrentStateId:Ljava/lang/String;

    .line 864
    return-void
.end method


# virtual methods
.method public bindEmService()V
    .locals 4

    .prologue
    .line 870
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    iget-object v2, v2, Lcom/android/settings/encryption/CryptSDCardSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "EncryptSDcard"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 869
    :cond_0
    return-void
.end method

.method public clearEmService()V
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "EncryptSDcard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 878
    :cond_0
    return-void
.end method

.method public getStateId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "Not support bixby, but get intent from EM. Please check Bixby feature in Setttings app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-object v2

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-nez v0, :cond_1

    .line 892
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "EmSettingsManager object is null, cannot get stateId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-object v2

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastState()Z
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-nez v0, :cond_0

    .line 926
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "EmSettingsManager object is null, cannot check last state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x0

    return v0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    return v0
.end method

.method public makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramAttrName"    # Ljava/lang/String;
    .param p3, "paramAttrValue"    # Ljava/lang/String;

    .prologue
    .line 900
    if-nez p1, :cond_0

    .line 901
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "Invalid Prameter paramName, cannot make NLG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 905
    :cond_0
    if-nez p2, :cond_1

    .line 906
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "Invalid Prameter paramAttrName, cannot make NLG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 910
    :cond_1
    if-nez p3, :cond_2

    .line 911
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "Invalid Prameter paramAttrVaule, cannot make NLG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-nez v0, :cond_3

    .line 916
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "EmSettingsManager object is null, cannot make NLG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public sendFailure()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-nez v0, :cond_0

    .line 942
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "EmSettingsManager object is null, cannot reply failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 940
    return-void
.end method

.method public sendSuccess()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-nez v0, :cond_0

    .line 934
    const-string/jumbo v0, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v1, "EmSettingsManager object is null, cannot reply success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 932
    return-void
.end method
