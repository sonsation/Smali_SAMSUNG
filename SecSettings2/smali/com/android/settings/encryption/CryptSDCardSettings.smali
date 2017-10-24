.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$1;,
        Lcom/android/settings/encryption/CryptSDCardSettings$2;,
        Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;,
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

.field private mContentView:Landroid/view/View;

.field private mDem:Lcom/samsung/android/security/SemSdCardEncryption;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mDoEncrypt:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mIsDisabledByOtherDevice:Z

.field private mIsLaunched:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mRightButton:Landroid/widget/Button;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private serviceBusy:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/encryption/CryptSDCardSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 69
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 70
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 82
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 83
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 84
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    .line 86
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 87
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 88
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 90
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 91
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 93
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 94
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    .line 781
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 49
    return-void
.end method

.method private checkProgress()V
    .locals 4

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    .line 627
    .local v0, "error":I
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkProgress LastError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    packed-switch v0, :pswitch_data_0

    .line 624
    :goto_0
    :pswitch_0
    return-void

    .line 630
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 635
    :pswitch_2
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "FILE_OPEN_ERR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 642
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_0

    .line 643
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 646
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 653
    :pswitch_4
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Encrypt error dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 658
    :pswitch_5
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decrypt error dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private disableButtonUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "disableButtonUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    return-void
.end method

.method private doEncryptSDCard()V
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 752
    iput-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 753
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 756
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 757
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 758
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v5, :cond_2

    move v5, v4

    .line 757
    :goto_1
    invoke-virtual {v7, v2, v5, v8}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 762
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v5}, Lcom/samsung/android/security/SemSdCardEncryption;->encryptStorage(Z)I

    move-result v1

    .line 763
    .local v1, "result":I
    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    .line 764
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_3

    .line 765
    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error SD card not mounted while encrypting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    .line 772
    :goto_2
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 773
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_5

    move v2, v6

    .line 772
    :goto_4
    invoke-virtual {v5, v3, v2, v8}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 777
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 751
    :cond_0
    return-void

    .end local v1    # "result":I
    :cond_1
    move v2, v4

    .line 757
    goto :goto_0

    :cond_2
    move v5, v3

    .line 760
    goto :goto_1

    .line 769
    .restart local v1    # "result":I
    :cond_3
    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error SD card not mounted while decrypting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_2

    :cond_4
    move v3, v4

    .line 772
    goto :goto_3

    .line 775
    :cond_5
    const/4 v2, 0x2

    goto :goto_4
.end method

.method private enableAllUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 538
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 533
    return-void
.end method

.method private finishProgress()V
    .locals 8

    .prologue
    const v7, 0x7f0b0630

    const v6, 0x7f0b062f

    const v5, 0x7f0b0624

    const v3, 0x7f0b0622

    const/4 v4, 0x0

    .line 591
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "finishProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 597
    :cond_0
    iget v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "totalStorage":Ljava/lang/String;
    iput v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 600
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_2

    .line 601
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 618
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 619
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    const-string/jumbo v2, "100%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 590
    return-void

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 606
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 609
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_3

    .line 610
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 613
    :cond_3
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 614
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initProgress()V
    .locals 2

    .prologue
    .line 548
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "initProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f11021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 553
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 554
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f11021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 555
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f11020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 558
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0b0622

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f0b062c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 547
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0b0624

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method private initVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "initialize Variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 525
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 526
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    .line 527
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 528
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 520
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 282
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 283
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 284
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 286
    .local v2, "isDisabledByAdmin":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    const-string/jumbo v3, "CryptKeeperSDSettings"

    const-string/jumbo v4, "isAdminApplied : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    const/4 v2, 0x1

    .line 298
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    .line 363
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 364
    .local v0, "pol":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "state":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 369
    const/4 v2, 0x1

    return v2

    .line 372
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private restorePrefs()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 303
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "restorePrefs"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 305
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_a

    .line 306
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string/jumbo v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    const-string/jumbo v5, "OtherDevice"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "checkOtherDevice":Ljava/lang/String;
    const-string/jumbo v5, "exception"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "restorePrefs ==> Error Case UI"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    .line 315
    :cond_0
    const-string/jumbo v5, "adminStart"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "adminStart":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 317
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 331
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adminStart":Ljava/lang/String;
    .end local v2    # "checkOtherDevice":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 332
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    if-nez v5, :cond_2

    .line 333
    new-instance v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 336
    :cond_2
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 337
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "mAdminPolicies is ture"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iput v6, v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 343
    :cond_3
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v5, v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 344
    iget-boolean v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v5

    if-eq v5, v10, :cond_4

    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v5

    if-nez v5, :cond_c

    :cond_4
    move v5, v6

    :goto_2
    or-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 345
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v8

    if-eq v8, v10, :cond_5

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v7, v6

    :cond_6
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 353
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 354
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 355
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v6, "Disabled by Admin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v5, :cond_8

    .line 358
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 301
    :cond_8
    return-void

    .line 321
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "CryptSDCardSettings started by user"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "CryptSDCardSettings started by user"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_b
    move v5, v7

    .line 343
    goto :goto_1

    :cond_c
    move v5, v7

    .line 344
    goto :goto_2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x1

    .line 508
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 511
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 514
    return v4

    .line 518
    :cond_0
    const v2, 0x7f0b0642

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 517
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private updatePrefUI()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f0b0624

    const v12, 0x7f0b0622

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 376
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "updatePrefUI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v7, :cond_0

    .line 379
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 381
    .local v2, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 382
    return-void

    .line 385
    .end local v2    # "mgr":Landroid/app/FragmentManager;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 386
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "desc":Ljava/lang/StringBuilder;
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v7, :cond_6

    .line 390
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    .line 391
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0629

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b062b

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    :cond_1
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v7, :cond_2

    const-string/jumbo v7, "Enabled"

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 405
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    :cond_3
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v6

    .line 411
    .local v6, "status":I
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v1

    .line 412
    .local v1, "error":I
    if-eqz v6, :cond_7

    .line 413
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "Service is busy: Disabling UI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 430
    :cond_4
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "state":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 433
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0632

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 435
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b062a

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 436
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 471
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 472
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->requestFocus()Z

    .line 375
    :goto_2
    return-void

    .line 397
    .end local v1    # "error":I
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "status":I
    :cond_6
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 398
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0628

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 399
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b062a

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 400
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    .restart local v1    # "error":I
    .restart local v6    # "status":I
    :cond_7
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v8, 0x7f11020f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 419
    .local v3, "progress":I
    const/16 v7, 0x64

    if-ne v3, v7, :cond_4

    .line 420
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "already finish enc/dec"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    if-eqz v7, :cond_8

    .line 423
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    .line 424
    :cond_8
    return-void

    .line 438
    .end local v3    # "progress":I
    .restart local v5    # "state":Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 440
    const-string/jumbo v7, "HiddenMount"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v7, :cond_c

    .line 458
    :cond_a
    :goto_3
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    if-nez v7, :cond_b

    if-ne v1, v11, :cond_e

    .line 459
    :cond_b
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    .line 460
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0640

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b062b

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 464
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 441
    :cond_c
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0631

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 442
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b060e

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 443
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b060d

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 446
    const-string/jumbo v7, "CryptKeeperSDSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePrefUI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v7, :cond_d

    .line 448
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 452
    :goto_4
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 450
    :cond_d
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_4

    .line 465
    :cond_e
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v7, :cond_5

    .line 466
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0633

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 467
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 474
    :cond_f
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_2
.end method

.method private updateProgress()V
    .locals 5

    .prologue
    .line 567
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "updateProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v2, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 574
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0b0622

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 576
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0b062d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 582
    :goto_0
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "totalStorage":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "remainStorage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 586
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    return-void

    .line 578
    .end local v0    # "remainStorage":Ljava/lang/String;
    .end local v1    # "totalStorage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0b0624

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 579
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0b062e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 480
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 481
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "state":Ljava/lang/String;
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 484
    return-void

    .line 488
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 479
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 177
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 185
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 186
    const-string/jumbo v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 275
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 274
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 270
    :cond_0
    :goto_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 260
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 202
    const v1, 0x7f040098

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 204
    const-string/jumbo v1, "security.mdpp"

    const-string/jumbo v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 208
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 212
    :cond_0
    new-instance v1, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    .line 213
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f11021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f1101bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    .line 215
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f1101bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    .line 216
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f11021a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 217
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f11021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 219
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 196
    iput-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 191
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-virtual {v0}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->clearEmService()V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 228
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    .line 230
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "SD card is unmounted, mount SD card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1, v3}, Lcom/samsung/android/security/SemSdCardEncryption;->SetMountSDcardToHelper(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->mountVolume()Z

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 242
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-virtual {v1}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->bindEmService()V

    .line 225
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    .line 253
    return-void
.end method

.method public showAlert(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "dialogId"    # I

    .prologue
    const/4 v11, 0x1

    const v10, 0x104000a

    const/4 v9, 0x0

    .line 667
    packed-switch p1, :pswitch_data_0

    .line 747
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 669
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v4}, Lcom/samsung/android/security/SemSdCardEncryption;->getAdditionalSpaceRequired()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    .line 671
    .local v2, "spaceInMB":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 672
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 675
    :cond_0
    const v1, 0x7f0b0634

    .line 676
    .local v1, "titleId":I
    const v0, 0x7f0b063f

    .line 677
    .local v0, "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AlertDialog storage warning - need over the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 681
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "%.2f"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "MB"

    aput-object v6, v5, v11

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/encryption/CryptSDCardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 687
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    .end local v2    # "spaceInMB":D
    :pswitch_1
    const v1, 0x7f0b0634

    .line 688
    .restart local v1    # "titleId":I
    const v0, 0x7f0b0639

    .line 689
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog - File opening fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 699
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_2
    const v1, 0x7f0b0634

    .line 700
    .restart local v1    # "titleId":I
    const v0, 0x7f0b063b

    .line 701
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - encrypt mount fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 711
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_3
    const v1, 0x7f0b0635

    .line 712
    .restart local v1    # "titleId":I
    const v0, 0x7f0b063c

    .line 713
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - decrypt mount fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 723
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_4
    const v1, 0x7f0b0634

    .line 724
    .restart local v1    # "titleId":I
    const v0, 0x7f0b0639

    .line 725
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - encrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 735
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_5
    const v1, 0x7f0b0635

    .line 736
    .restart local v1    # "titleId":I
    const v0, 0x7f0b063a

    .line 737
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - decrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
