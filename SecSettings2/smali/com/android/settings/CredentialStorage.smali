.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings/CredentialStorage$ResetDialog;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$UnlockDialog;
    }
.end annotation


# static fields
.field private static final synthetic -android-security-KeyStore$StateSwitchesValues:[I

.field private static final SYSTEM_CREDENTIAL_UIDS:[I


# instance fields
.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/CredentialStorage;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method private static synthetic -getandroid-security-KeyStore$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/CredentialStorage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->isUserRemoveCertificatesAllowed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 161
    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    .line 162
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    .line 161
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    .line 135
    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 721
    const-string/jumbo v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 724
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    .line 730
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    .line 730
    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 732
    .local v0, "launchedFromUid":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 733
    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v6

    .line 736
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 738
    return v6

    .line 740
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 746
    .local v1, "launchedFromUserId":I
    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 747
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 748
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_4

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 750
    :cond_4
    return v6

    .line 741
    .end local v0    # "launchedFromUid":I
    .end local v1    # "launchedFromUserId":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 743
    .local v3, "re":Landroid/os/RemoteException;
    return v6

    .line 752
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "launchedFromUid":I
    .restart local v1    # "launchedFromUserId":I
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_5
    return v5
.end method

.method private checkKeyGuardQuality()Z
    .locals 4

    .prologue
    .line 263
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 264
    .local v0, "credentialOwner":I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 265
    .local v1, "quality":I
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard(I)Z
    .locals 5
    .param p1, "requestCode"    # I

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 760
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 762
    const v3, 0x7f0b1807

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    .line 760
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    .line 763
    .local v0, "launched":Z
    return v0
.end method

.method private doesCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 899
    if-nez p1, :cond_0

    .line 900
    const/4 v2, 0x1

    return v2

    .line 903
    :cond_0
    const-string/jumbo v2, "user_certificate_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 905
    .local v0, "certBytes":[B
    const-string/jumbo v2, "user_private_key_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 907
    .local v1, "pKeyBytes":[B
    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v2

    return v2
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    .line 248
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 243
    return-void
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/android/settings/CredentialStorage;->-getandroid-security-KeyStore$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    return-void

    .line 218
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    .line 219
    return-void

    .line 222
    :pswitch_1
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$UnlockDialog;)V

    .line 223
    return-void

    .line 226
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    .line 228
    return-void

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 232
    return-void

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 19
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 443
    const/16 v16, 0x0

    .line 444
    .local v16, "pKeyAlias":Ljava/lang/String;
    const/16 v17, 0x0

    .line 445
    .local v17, "pKeyBytes":[B
    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 447
    .local v16, "pKeyAlias":Ljava/lang/String;
    const-string/jumbo v2, "user_private_key_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 450
    .end local v16    # "pKeyAlias":Ljava/lang/String;
    .end local v17    # "pKeyBytes":[B
    :cond_0
    const/4 v11, 0x0

    .line 451
    .local v11, "certBytes":[B
    const-string/jumbo v2, "user_certificate_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string/jumbo v2, "user_certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 455
    .end local v11    # "certBytes":[B
    :cond_1
    const/4 v9, 0x0

    .line 456
    .local v9, "caCertBytes":[B
    const-string/jumbo v2, "ca_certificates_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const-string/jumbo v2, "ca_certificates_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 460
    .end local v9    # "caCertBytes":[B
    :cond_2
    if-eqz v11, :cond_9

    if-eqz v16, :cond_9

    .line 463
    if-eqz p2, :cond_3

    .line 464
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 466
    const/16 p2, 0x0

    .line 471
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 472
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const-string/jumbo v2, "USRPKEY_"

    const-string/jumbo v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "alias":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 474
    .local v4, "profile":Lcom/samsung/android/knox/keystore/CertificateProfile;
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 475
    const-string/jumbo v2, "install_as_uid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x3f2

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 478
    iput-object v8, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 479
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v13, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "keystorekeychain"

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    if-eqz p2, :cond_4

    .line 482
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_4
    iput-object v13, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 485
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 487
    if-eqz v17, :cond_7

    .line 488
    invoke-static/range {v17 .. v17}, Lcom/sec/generic/util/CCMKeyCertUtils;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v15

    .line 489
    .local v15, "pKey":Ljava/security/PrivateKey;
    invoke-static {v11}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v10

    .line 490
    .local v10, "cert":Ljava/security/cert/Certificate;
    const/16 v18, 0x0

    .line 491
    .local v18, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    .line 492
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v18, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v10, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 501
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v6

    .line 500
    const/4 v5, 0x3

    .line 501
    const/4 v7, 0x0

    .line 497
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 502
    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing private key into CCM, installObjectWithProfile returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v2, 0x0

    return v2

    .line 475
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "pKey":Ljava/security/PrivateKey;
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 508
    .restart local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v14, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 510
    if-eqz v9, :cond_8

    .line 511
    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 514
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 516
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 515
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 517
    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing certificate into CCM, installCertificate returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v2, 0x0

    return v2

    .line 520
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "profile":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .end local v8    # "alias":Ljava/lang/String;
    .end local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v12

    .line 521
    .local v12, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing certificate into CCM"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x0

    return v2

    .line 526
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_9
    const/4 v2, 0x1

    return v2
.end method

.method private installIfAvailable()V
    .locals 32

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/Bundle;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 287
    :cond_0
    return-void

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 291
    .local v6, "bundle":Landroid/os/Bundle;
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 293
    const-string/jumbo v29, "install_as_uid"

    const/16 v30, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 295
    .local v23, "uid":I
    const-string/jumbo v29, "senderpackagename"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 297
    .local v22, "packageName":Ljava/lang/String;
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "PackageName from CredentialStorage : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v29, -0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    move/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 317
    :cond_2
    const/4 v9, 0x0

    .line 318
    .local v9, "ccmVersion":Ljava/lang/String;
    const/16 v18, 0x0

    .line 321
    .local v18, "isCCMEnabled":Z
    :try_start_0
    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    move/from16 v0, v29

    invoke-direct {v12, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 322
    .local v12, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    sget-object v29, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v9

    .line 325
    .end local v9    # "ccmVersion":Ljava/lang/String;
    :goto_0
    const-string/jumbo v29, "3.0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 326
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "CCM is available on this device"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v12, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v29

    if-nez v29, :cond_7

    .line 330
    const/16 v18, 0x1

    .line 331
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "CCM is available for KeyChain"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v12    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/CredentialStorage;->doesCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z

    move-result v17

    .line 359
    .local v17, "isAlgSupported":Z
    if-eqz v18, :cond_c

    if-eqz v17, :cond_c

    .line 360
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "CCM is enabled for this package : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/settings/CredentialStorage;->installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 362
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "installCertificateinCCM failed"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 300
    .end local v17    # "isAlgSupported":Z
    .end local v18    # "isCCMEnabled":Z
    :cond_4
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 301
    .local v13, "dstUserId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    .line 304
    .local v20, "myUserId":I
    const/16 v29, 0x3f2

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 305
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install credentials as uid "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ": cross-user installs"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 306
    const-string/jumbo v31, " may only target wifi uids"

    .line 305
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_5
    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v30, "com.android.credentials.INSTALL"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const/high16 v30, 0x2000000

    .line 310
    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v16

    .line 313
    .local v16, "installIntent":Landroid/content/Intent;
    new-instance v29, Landroid/os/UserHandle;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    return-void

    .line 323
    .end local v13    # "dstUserId":I
    .end local v16    # "installIntent":Landroid/content/Intent;
    .end local v20    # "myUserId":I
    .restart local v9    # "ccmVersion":Ljava/lang/String;
    .restart local v12    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v18    # "isCCMEnabled":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 333
    .end local v9    # "ccmVersion":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "CCM is not available for KeyChain"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 343
    .end local v12    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catch_0
    move-exception v14

    .line 344
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v9, 0x0

    .line 345
    .restart local v9    # "ccmVersion":Ljava/lang/String;
    const/16 v18, 0x0

    .line 346
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "Failed at ClientCertificateManager API isCCMPolicyEnabledForPackage-Exception "

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 337
    .end local v9    # "ccmVersion":Ljava/lang/String;
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v12    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_8
    const/16 v18, 0x0

    .line 338
    :try_start_2
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "CCM Service is NOT available on this device"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 341
    :cond_9
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "CCM is NOT available on this device"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 366
    .end local v12    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v17    # "isAlgSupported":Z
    :cond_a
    :try_start_3
    const-string/jumbo v29, "user_private_key_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 367
    .local v21, "pKeyAlias":Ljava/lang/String;
    if-eqz v21, :cond_b

    .line 368
    const-string/jumbo v29, "USRPKEY_"

    const-string/jumbo v30, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v5, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setGrant(ILjava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 428
    .end local v5    # "alias":Ljava/lang/String;
    .end local v21    # "pKeyAlias":Ljava/lang/String;
    :cond_b
    :goto_2
    const-string/jumbo v29, "ca_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 429
    const-string/jumbo v29, "ca_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, "caListName":Ljava/lang/String;
    const-string/jumbo v29, "ca_certificates_data"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 431
    .local v7, "caListData":[B
    const/16 v29, 0x3f2

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const/4 v15, 0x0

    .line 433
    .local v15, "flags":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v8, v7, v1, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v29

    if-nez v29, :cond_13

    .line 434
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " as uid "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 371
    .end local v7    # "caListData":[B
    .end local v8    # "caListName":Ljava/lang/String;
    .end local v15    # "flags":I
    :catch_1
    move-exception v14

    .line 372
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "Failed at ClientCertificateManager API setGrant-Exception "

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 376
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_c
    const-string/jumbo v29, "user_private_key_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 377
    const-string/jumbo v29, "user_private_key_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 378
    .local v19, "key":Ljava/lang/String;
    const-string/jumbo v29, "user_private_key_data"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v24

    .line 380
    .local v24, "value":[B
    const/4 v15, 0x1

    .line 381
    .restart local v15    # "flags":I
    const/16 v29, 0x3f2

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 384
    const-string/jumbo v29, "CredentialStorage"

    const-string/jumbo v30, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v15, 0x0

    .line 388
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v29

    if-nez v29, :cond_e

    .line 389
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " as uid "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 394
    .end local v15    # "flags":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v24    # "value":[B
    :cond_e
    const-string/jumbo v29, "user_certificate_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 395
    const-string/jumbo v29, "user_certificate_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "certName":Ljava/lang/String;
    const-string/jumbo v29, "user_certificate_data"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 397
    .local v10, "certData":[B
    const/16 v29, 0x3f2

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    const/4 v15, 0x0

    .line 399
    .restart local v15    # "flags":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v11, v10, v1, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v29

    if-nez v29, :cond_10

    .line 400
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " as uid "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 397
    .end local v15    # "flags":I
    :cond_f
    const/4 v15, 0x1

    .restart local v15    # "flags":I
    goto :goto_4

    .line 405
    .end local v10    # "certData":[B
    .end local v11    # "certName":Ljava/lang/String;
    .end local v15    # "flags":I
    :cond_10
    sget-boolean v29, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v29, :cond_b

    .line 406
    const-string/jumbo v29, "wapi_as_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 407
    const-string/jumbo v29, "wapi_as_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 408
    .local v26, "wapiascertName":Ljava/lang/String;
    const-string/jumbo v29, "wapi_as_certificates_data"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    .line 410
    .local v25, "wapiascertData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v29

    if-nez v29, :cond_11

    .line 411
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 416
    .end local v25    # "wapiascertData":[B
    .end local v26    # "wapiascertName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v29, "wapi_user_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 417
    const-string/jumbo v29, "wapi_user_certificates_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 418
    .local v28, "wapiuscertName":Ljava/lang/String;
    const-string/jumbo v29, "wapi_user_certificates_data"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v27

    .line 420
    .local v27, "wapiuscertData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v29

    if-nez v29, :cond_b

    .line 421
    const-string/jumbo v29, "CredentialStorage"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to install "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 431
    .end local v27    # "wapiuscertData":[B
    .end local v28    # "wapiuscertName":Ljava/lang/String;
    .restart local v7    # "caListData":[B
    .restart local v8    # "caListName":Ljava/lang/String;
    :cond_12
    const/4 v15, 0x1

    .restart local v15    # "flags":I
    goto/16 :goto_3

    .line 439
    .end local v7    # "caListData":[B
    .end local v8    # "caListName":Ljava/lang/String;
    .end local v15    # "flags":I
    :cond_13
    const/16 v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    .line 285
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 270
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 272
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "algOid":Ljava/lang/String;
    new-instance v5, Lsun/security/x509/AlgorithmId;

    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "algName":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 276
    .end local v0    # "algName":Ljava/lang/String;
    .end local v1    # "algOid":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v5, 0x0

    return v5
.end method

.method private isKnoxUser()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 801
    .local v0, "userId":I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isUserRemoveCertificatesAllowed(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 913
    new-array v1, v0, [Ljava/lang/String;

    .line 914
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 916
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "content://com.sec.knox.provider/CertificatePolicy"

    .line 917
    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    .line 916
    invoke-static {p0, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    .local v0, "isPolicyEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isPolicyEnabled":Z
    :cond_0
    move v0, v2

    .line 916
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 768
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 773
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 774
    if-ne p2, v2, :cond_1

    .line 775
    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->isKnoxUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    goto :goto_0

    .line 788
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 767
    :cond_2
    :goto_1
    return-void

    .line 789
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 790
    if-ne p2, v2, :cond_4

    .line 791
    new-instance v1, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 792
    return-void

    .line 795
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 926
    const-string/jumbo v0, "CredentialStorage"

    const-string/jumbo v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 930
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 925
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 186
    .local v2, "userManager":Landroid/os/UserManager;
    const-string/jumbo v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    const-string/jumbo v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    new-instance v3, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetDialog;)V

    .line 180
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 199
    :cond_2
    const-string/jumbo v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
