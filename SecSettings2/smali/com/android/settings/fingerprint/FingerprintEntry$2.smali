.class Lcom/android/settings/fingerprint/FingerprintEntry$2;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEntry;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "stateId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get0(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 530
    .local v0, "keyguardMgr":Landroid/app/KeyguardManager;
    const-string/jumbo v2, "FingerprintsEntry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 531
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenLockType"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    .line 535
    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 534
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 551
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get2(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BiometricData"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    .line 541
    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 540
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BiometricsData"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintsEntry"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 547
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    .line 548
    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 547
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 526
    :cond_3
    return-void
.end method
