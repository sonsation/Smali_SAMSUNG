.class Lcom/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 784
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "BixbyManger is null, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void

    .line 788
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "stateId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 790
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Failed to get stateId, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 794
    :cond_1
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby Request stateId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string/jumbo v2, "StartEncryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 798
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "sdcardState":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 800
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot encrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    .line 803
    return-void

    .line 807
    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 808
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already encrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 813
    return-void

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 818
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_5
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 854
    .end local v0    # "sdcardState":Ljava/lang/String;
    :goto_0
    return-void

    .line 822
    :cond_6
    const-string/jumbo v2, "StartDecryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 825
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 826
    .restart local v0    # "sdcardState":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 827
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot decrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    .line 830
    return-void

    .line 834
    :cond_7
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-nez v2, :cond_9

    .line 835
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already decrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 837
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_8
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 840
    return-void

    .line 844
    :cond_9
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 845
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_a
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    goto/16 :goto_0

    .line 850
    .end local v0    # "sdcardState":Ljava/lang/String;
    :cond_b
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "There isn\'t stateId matched with request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    goto/16 :goto_0
.end method
