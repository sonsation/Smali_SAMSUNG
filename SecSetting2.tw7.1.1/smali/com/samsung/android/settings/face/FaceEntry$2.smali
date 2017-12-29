.class Lcom/samsung/android/settings/face/FaceEntry$2;
.super Ljava/lang/Object;
.source "FaceEntry.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceEntry;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    .line 466
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "FcstFaceEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 469
    .local v0, "MY_USER_ID":I
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceEntry;->-get0(Lcom/samsung/android/settings/face/FaceEntry;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/samsung/android/settings/face/FaceEntry;->-set0(Lcom/samsung/android/settings/face/FaceEntry;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    .line 470
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceEntry;->-get2(Lcom/samsung/android/settings/face/FaceEntry;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 471
    .local v2, "isSecure":Z
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceEntry;->-get1(Lcom/samsung/android/settings/face/FaceEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceEntry;->-get1(Lcom/samsung/android/settings/face/FaceEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v1

    .line 473
    :goto_0
    const-string/jumbo v4, "FaceEntry"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 474
    if-eqz v2, :cond_1

    .line 475
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "ScreenLockType"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "FaceEntry"

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 487
    :goto_1
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x0

    .local v1, "isEnrolledFace":Z
    goto :goto_0

    .line 478
    .end local v1    # "isEnrolledFace":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 479
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricsData"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "FaceEntry"

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    .line 482
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "BiometricsData"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "FaceEntry"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v4, v4, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 465
    :cond_3
    return-void
.end method
