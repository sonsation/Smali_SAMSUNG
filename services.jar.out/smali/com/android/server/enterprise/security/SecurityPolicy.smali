.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Lcom/samsung/android/knox/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$1;,
        Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;,
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;
    }
.end annotation


# static fields
.field private static final ACTION_LAST_BOOT_SAFE_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

.field private static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_BLOCK_SIZE:I = 0x1000

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final InitialVectorNum:I = 0x10

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 1
    .param p1, "isSafe"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 179
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    .line 196
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 197
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    .line 224
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 234
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 205
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 209
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 216
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 204
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.email.provider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I

    .prologue
    .line 2479
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2478
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I
    .param p5, "userId"    # I

    .prologue
    .line 2484
    const/4 v11, 0x1

    .line 2486
    .local v11, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2488
    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_1

    .line 2489
    const/4 v11, 0x0

    .line 2521
    .end local v11    # "ret":Z
    :cond_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    return v11

    .line 2491
    .restart local v11    # "ret":Z
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    .local v4, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2493
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2498
    :goto_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v11    # "ret":Z
    .local v9, "name$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2499
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2500
    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    .line 2499
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v10

    .line 2501
    .local v10, "pemCert":[B
    if-eqz v10, :cond_2

    .line 2502
    invoke-static {v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v7

    .line 2503
    .local v7, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cert$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 2504
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2506
    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    .line 2505
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v14

    and-int/2addr v11, v14

    .line 2508
    .local v11, "ret":Z
    const-string/jumbo v14, "USRCERT_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2511
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "USRPKEY_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2512
    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    .line 2511
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2520
    .end local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "cert$iterator":Ljava/util/Iterator;
    .end local v7    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "name$iterator":Ljava/util/Iterator;
    .end local v10    # "pemCert":[B
    .end local v11    # "ret":Z
    :catchall_0
    move-exception v14

    .line 2521
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2520
    throw v14

    .line 2495
    .restart local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "ret":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto/16 :goto_0
.end method

.method private dumpAliases(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2695
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2696
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 2697
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2699
    .local v0, "aliasesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2700
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2707
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    .end local v0    # "aliasesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpAliases([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2691
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 2071
    const/4 v2, 0x1

    .line 2072
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2074
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2076
    .local v0, "callingUid":I
    if-nez p2, :cond_0

    .line 2077
    const/4 p3, 0x0

    .line 2079
    .end local p3    # "bannerText":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2080
    const-string/jumbo v4, "SECURITY"

    .line 2081
    const-string/jumbo v5, "deviceEnrolled"

    .line 2079
    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2083
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2084
    const-string/jumbo v4, "SECURITY"

    .line 2085
    const-string/jumbo v5, "bannerText"

    .line 2083
    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    :goto_0
    return v2

    .line 2087
    :catch_0
    move-exception v1

    .line 2088
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    .line 417
    const-string/jumbo v2, "android.permission.sec.MDM_SECURITY"

    .line 416
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 419
    .local v0, "whiteListedCxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-nez v0, :cond_1

    .line 420
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 434
    :goto_0
    return-object p1

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 426
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 428
    iget v1, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 427
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Operation supported only on owner space"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_SECURITY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 401
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 400
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_SECURITY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 411
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 410
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_SECURITY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 392
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 391
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1873
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1874
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1877
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    .line 1878
    const/4 v8, 0x1

    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 1879
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1880
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 1882
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "resultLine":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1883
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1885
    .end local v5    # "resultLine":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 1886
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, "executeCommand failed "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1891
    if-eqz v3, :cond_0

    .line 1892
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1898
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v6

    .line 1891
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "resultLine":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 1892
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1894
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1895
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "resultLine":Ljava/lang/String;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 1888
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_4
    :try_start_5
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, "executeCommand failed "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1891
    if-eqz v3, :cond_0

    .line 1892
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1894
    :catch_3
    move-exception v0

    .line 1895
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1894
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v0

    .line 1895
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1889
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1891
    :goto_5
    if-eqz v3, :cond_3

    .line 1892
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1889
    :cond_3
    :goto_6
    throw v7

    .line 1894
    :catch_5
    move-exception v0

    .line 1895
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1889
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1885
    .end local v2    # "process":Ljava/lang/Process;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/InterruptedException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private formatExternalStorageCard()Z
    .locals 10

    .prologue
    .line 783
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 782
    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v6

    .line 784
    .local v6, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v6}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 801
    .local v7, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 802
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 804
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 805
    .local v3, "lock":Ljava/lang/Object;
    new-instance v4, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v4, p0, v3}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 823
    .local v4, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string/jumbo v8, "file"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 826
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 828
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    const-wide/16 v8, 0x1b58

    :try_start_1
    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    .line 835
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 841
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v4    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "sm":Landroid/os/storage/StorageManager;
    .end local v6    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v7    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v8

    .line 831
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v3    # "lock":Ljava/lang/Object;
    .restart local v4    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "sm":Landroid/os/storage/StorageManager;
    .restart local v6    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .restart local v7    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, "formatStorageCard - InterruptedException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 828
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v3

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 837
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v4    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "sm":Landroid/os/storage/StorageManager;
    .end local v6    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v7    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, "formatStorageCard fail"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .locals 23
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v16, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1203
    .local v18, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v20 .. v21}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v13

    .line 1204
    .local v13, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 1206
    .local v14, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v14, :cond_2

    .line 1208
    :try_start_1
    invoke-interface {v14}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v17

    .line 1209
    .local v17, "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "alias$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1210
    .local v2, "alias":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1211
    .local v6, "certData":[B
    if-eqz v6, :cond_0

    .line 1213
    :try_start_2
    invoke-static {v6}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v15

    .line 1214
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "cert$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1215
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 1216
    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v7}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1217
    .local v7, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v7, v4}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1218
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1219
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1220
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1223
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "cert$iterator":Ljava/util/Iterator;
    .end local v7    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v9

    .line 1224
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getAndroidInstalledCertificates "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1230
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "certData":[B
    .end local v9    # "e":Ljava/io/IOException;
    .end local v17    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    .line 1231
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getAndroidInstalledCertificates "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1233
    :try_start_5
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1241
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    .end local v13    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v14    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v16

    .line 1225
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "alias$iterator":Ljava/util/Iterator;
    .restart local v6    # "certData":[B
    .restart local v13    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v14    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v17    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v12

    .line 1226
    .local v12, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getAndroidInstalledCertificates "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1232
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "certData":[B
    .end local v12    # "e":Ljava/security/cert/CertificateException;
    .end local v17    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v20

    .line 1233
    :try_start_7
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1232
    throw v20
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1236
    .end local v13    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v14    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v11

    .line 1237
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1241
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1233
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "alias$iterator":Ljava/util/Iterator;
    .restart local v13    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v14    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v17    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_9
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 1238
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v13    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v14    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v17    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v10

    .line 1239
    .local v10, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1241
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1240
    .end local v10    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v20

    .line 1241
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    throw v20
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 228
    const-string/jumbo v1, "enterprise_policy_new"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 547
    .local v1, "mSecureRandom":Ljava/security/SecureRandom;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .end local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 548
    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .locals 2
    .param p1, "keystore"    # I

    .prologue
    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2597
    .local v0, "keystores":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 2598
    const-string/jumbo v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 2601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2602
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    :cond_1
    const-string/jumbo v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 2607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2608
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    :cond_3
    const-string/jumbo v1, "VPN and Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 2614
    const-string/jumbo v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 8
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .prologue
    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1315
    .local v4, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1316
    new-instance v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    .end local v0    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .local v1, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 1318
    .local v3, "pemCert":[B
    if-eqz v3, :cond_2

    .line 1320
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v2

    .line 1321
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1322
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1327
    .end local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "pemCert":[B
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    return-object v0

    .restart local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v3    # "pemCert":[B
    :cond_1
    move-object v0, v1

    .line 1321
    .end local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    goto :goto_0

    .line 1326
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "pemCert":[B
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    :catchall_0
    move-exception v6

    .line 1327
    .end local v0    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    throw v6

    .restart local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    goto :goto_1

    .end local v0    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local v3    # "pemCert":[B
    :cond_2
    move-object v0, v1

    .end local v1    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local v0    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    goto :goto_0
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1346
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1347
    const/4 v0, 0x0

    .line 1348
    .local v0, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1350
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1354
    .end local v0    # "names":[Ljava/lang/String;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1353
    .restart local v0    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1354
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    throw v1

    .line 1357
    .end local v0    # "names":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 18
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v10, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1158
    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 1160
    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v14

    .line 1159
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1161
    .local v8, "names":[Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1162
    const/4 v11, 0x0

    array-length v14, v8

    :goto_0
    if-ge v11, v14, :cond_3

    aget-object v7, v8, v11

    .line 1163
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1164
    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v17

    .line 1163
    invoke-virtual/range {v15 .. v17}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v9

    .line 1165
    .local v9, "pemCert":[B
    if-eqz v9, :cond_2

    .line 1166
    invoke-static {v9}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v6

    .line 1167
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cert$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1168
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 1169
    new-instance v5, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1170
    .local v5, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1171
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1172
    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 1173
    const-string/jumbo v15, "USRCERT_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "USRPKEY_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1175
    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v17

    .line 1174
    invoke-virtual/range {v15 .. v17}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "arrayPKeys":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v15, v2

    if-eqz v15, :cond_1

    .line 1177
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setHasPrivateKey(Z)V

    .line 1180
    .end local v2    # "arrayPKeys":[Ljava/lang/String;
    :cond_1
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1187
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "cert$iterator":Ljava/util/Iterator;
    .end local v5    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "names":[Ljava/lang/String;
    .end local v9    # "pemCert":[B
    :catchall_0
    move-exception v11

    .line 1188
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw v11

    .line 1162
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "names":[Ljava/lang/String;
    .restart local v9    # "pemCert":[B
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1188
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "names":[Ljava/lang/String;
    .end local v9    # "pemCert":[B
    :cond_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1191
    return-object v10
.end method

.method private getSessionKey()Ljava/security/Key;
    .locals 4

    .prologue
    .line 532
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 533
    const/4 v1, 0x0

    .line 535
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_0
    const-string/jumbo v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 536
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 537
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    return-object v2

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .locals 23
    .param p1, "includeDisabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1248
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v17, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1251
    .local v18, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v20 .. v21}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v14

    .line 1253
    .local v14, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 1254
    .local v15, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v15, :cond_2

    .line 1256
    :try_start_1
    invoke-interface {v15}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v4

    .line 1257
    .local v4, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "alias$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1258
    .local v2, "alias":Ljava/lang/String;
    new-instance v8, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1259
    .local v8, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    const/16 v16, 0x0

    .line 1260
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move/from16 v0, p1

    invoke-interface {v15, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1262
    .local v7, "certData":[B
    if-eqz v7, :cond_0

    .line 1264
    :try_start_2
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v16

    .line 1265
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cert$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1266
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_1

    .line 1267
    invoke-virtual {v8, v5}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1268
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1269
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1270
    invoke-interface {v15, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setEnabled(Z)V

    .line 1271
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1274
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "cert$iterator":Ljava/util/Iterator;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v10

    .line 1275
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1281
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "certData":[B
    .end local v8    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1282
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1284
    :try_start_5
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1292
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    .end local v14    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v15    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v17

    .line 1276
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "alias$iterator":Ljava/util/Iterator;
    .restart local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "certData":[B
    .restart local v8    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local v14    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v15    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_2
    move-exception v13

    .line 1277
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1283
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "certData":[B
    .end local v8    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v20

    .line 1284
    :try_start_7
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1283
    throw v20
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1287
    .end local v14    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v15    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v12

    .line 1288
    .local v12, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1292
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1284
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "alias$iterator":Ljava/util/Iterator;
    .restart local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v15    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_3
    :try_start_9
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 1289
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v15    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_4
    move-exception v11

    .line 1290
    .local v11, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string/jumbo v20, "SecurityPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1292
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1291
    .end local v11    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v20

    .line 1292
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    throw v20
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 463
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-object v1
.end method

.method private isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2827
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2828
    return v3

    .line 2829
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private isBannerApp(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2158
    const/4 v1, 0x1

    return v1

    .line 2160
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 2714
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2718
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 2719
    const-string/jumbo v6, "device_policy"

    .line 2718
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2720
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    .line 2724
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2720
    return v4

    .line 2721
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 2722
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "SecurityPolicy"

    const-string/jumbo v6, "is Internal Storage Encrypted by Default key?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2724
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    return v4

    .line 2723
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2724
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2723
    throw v4
.end method

.method private isLastBootInSafeMode()Z
    .locals 3

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2255
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2256
    const/4 v1, 0x1

    return v1

    .line 2258
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isNativeKeyStoreUnlocked()Z
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1422
    const/4 v1, 0x0

    .line 1424
    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 1425
    const/4 v1, 0x1

    .line 1433
    :cond_0
    :goto_0
    return v1

    .line 1427
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Ljava/lang/AssertionError;
    const-string/jumbo v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isProcOrSysFolder(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1855
    const-string/jumbo v1, "sys"

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "parsedPath":[Ljava/lang/String;
    aget-object v1, v0, v5

    const-string/jumbo v2, "/"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1859
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1860
    :cond_0
    return v4

    .line 1863
    :cond_1
    const-string/jumbo v1, "proc"

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1864
    aget-object v1, v0, v5

    const-string/jumbo v2, "/"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1865
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v0, v4

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1866
    :cond_2
    return v4

    .line 1869
    :cond_3
    return v5
.end method

.method private isUserRestrictedFolder(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1833
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1835
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 1837
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isProcOrSysFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1839
    const/4 v0, 0x1

    .line 1850
    :cond_0
    :goto_0
    return v0

    .line 1841
    :cond_1
    const-string/jumbo v2, "/data/user/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1845
    :cond_2
    const-string/jumbo v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1846
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 6
    .param p1, "fdir"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "outFile"    # Ljava/io/PrintWriter;

    .prologue
    .line 1807
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1808
    const/16 v3, 0x14

    if-ge p2, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1811
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1812
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFileNamesWithAttributes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1815
    const-string/jumbo v4, "\n"

    .line 1814
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1817
    .local v2, "listFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1818
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1819
    .local v1, "f":Ljava/io/File;
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v1, v5, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "listFiles":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1806
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private needtoCheckPackageCaller()Z
    .locals 3

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2575
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2576
    const/4 v1, 0x0

    return v1

    .line 2578
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1132
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1133
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1135
    add-int/lit8 v1, v1, -0x1

    .line 1132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .prologue
    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1387
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1389
    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    .line 1388
    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1391
    .local v0, "ret":Z
    const-string/jumbo v1, "USRCERT_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1395
    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    .line 1394
    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    and-int/2addr v0, v1

    .line 1399
    .end local v0    # "ret":Z
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    return v0

    .line 1398
    :catchall_0
    move-exception v1

    .line 1399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1398
    throw v1
.end method

.method private retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 7
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 2352
    const/4 v0, 0x0

    .line 2354
    .local v0, "certificateAlias":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2357
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    .line 2356
    invoke-interface {p1, v4}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2367
    .end local v0    # "certificateAlias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2362
    .restart local v0    # "certificateAlias":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2363
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2360
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v2

    .line 2361
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2358
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2359
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveDeviceBootMode(Z)Z
    .locals 7
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2239
    const/4 v1, 0x1

    .line 2242
    .local v1, "result":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "deviceBootMode"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2243
    .local v1, "result":Z
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    .end local v1    # "result":Z
    :goto_2
    return v1

    .local v1, "result":Z
    :cond_0
    move v4, v3

    .line 2242
    goto :goto_0

    .local v1, "result":Z
    :cond_1
    move v2, v3

    .line 2243
    goto :goto_1

    .line 2244
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2245
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_2
.end method

.method private sendIntentToSettings(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2586
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2587
    .local v0, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    iget-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 2585
    return-void
.end method

.method private validateKeystoreParam(I)Z
    .locals 3
    .param p1, "keystore"    # I

    .prologue
    .line 2529
    const/4 v0, 0x1

    .line 2530
    .local v0, "ret":Z
    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    .line 2532
    const/4 v0, 0x0

    .line 2537
    :cond_0
    :goto_0
    return v0

    .line 2533
    :cond_1
    or-int/lit8 v1, p1, 0x7

    .line 2528
    const/4 v2, 0x7

    .line 2533
    if-eq v1, v2, :cond_0

    .line 2535
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validatePackageName(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2790
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "*"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2791
    :cond_0
    return v6

    .line 2794
    :cond_1
    const-string/jumbo v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2795
    .local v2, "labels":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2796
    .local v3, "numDots":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 2797
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_2

    .line 2798
    add-int/lit8 v3, v3, 0x1

    .line 2796
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2805
    :cond_3
    array-length v5, v2

    if-lt v3, v5, :cond_4

    .line 2806
    return v6

    .line 2815
    :cond_4
    const-string/jumbo v4, "^[A-Za-z0-9_]+$"

    .line 2816
    .local v4, "regex":Ljava/lang/String;
    array-length v7, v2

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_8

    aget-object v1, v2, v5

    .line 2817
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_6

    .line 2819
    :cond_5
    return v6

    .line 2818
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-le v8, v9, :cond_5

    .line 2816
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2822
    .end local v1    # "label":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2730
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2731
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 2733
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "android"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v13

    .line 2736
    .local v13, "userContext":Landroid/content/Context;
    const/4 v10, 0x1

    .line 2737
    .local v10, "result":Z
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2783
    :cond_0
    const/4 v10, 0x0

    .line 2786
    .end local v10    # "result":Z
    :goto_0
    return v10

    .line 2738
    .restart local v10    # "result":Z
    :cond_1
    const/4 v5, 0x0

    .line 2739
    .local v5, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2742
    .local v11, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2744
    .local v8, "identity":J
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, "appIdentity$iterator":Ljava/util/Iterator;
    move-object v6, v5

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "result":Z
    .end local v11    # "signature":Ljava/lang/String;
    .local v6, "cv":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    .line 2745
    .local v2, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    const/4 v12, 0x1

    .local v12, "signatureMatch":Z
    const/4 v4, 0x0

    .line 2747
    .local v4, "appInstalled":Z
    if-eqz v2, :cond_2

    .line 2748
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2749
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 2752
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2754
    const/4 v10, 0x0

    .restart local v10    # "result":Z
    move-object v5, v6

    .end local v4    # "appInstalled":Z
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "result":Z
    .local v5, "cv":Landroid/content/ContentValues;
    :goto_2
    move-object v6, v5

    .end local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 2758
    .restart local v4    # "appInstalled":Z
    :cond_3
    if-eqz v11, :cond_4

    .line 2759
    invoke-static {v13, v7, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2767
    .end local v4    # "appInstalled":Z
    :cond_4
    :goto_3
    if-nez v12, :cond_6

    if-eqz v4, :cond_6

    .line 2776
    const/4 v10, 0x0

    .restart local v10    # "result":Z
    move-object v5, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    goto :goto_2

    .line 2761
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v10    # "result":Z
    .restart local v4    # "appInstalled":Z
    .restart local v6    # "cv":Landroid/content/ContentValues;
    :cond_5
    const/4 v12, 0x0

    .line 2764
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .local v4, "appInstalled":Z
    goto :goto_3

    .line 2768
    .end local v4    # "appInstalled":Z
    :cond_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2770
    .end local v6    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    :try_start_2
    const-string/jumbo v15, "adminUid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2771
    const-string/jumbo v15, "packageName"

    invoke-virtual {v5, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    const-string/jumbo v15, "signature"

    invoke-virtual {v5, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "CertificateWhiteListTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_7

    const/4 v15, 0x1

    :goto_4
    and-int/2addr v10, v15

    .local v10, "result":Z
    goto :goto_2

    .end local v10    # "result":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 2780
    .end local v2    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "signatureMatch":Z
    .restart local v6    # "cv":Landroid/content/ContentValues;
    :cond_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2779
    .end local v3    # "appIdentity$iterator":Ljava/util/Iterator;
    .end local v6    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v15

    .line 2780
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2779
    throw v15

    .restart local v3    # "appIdentity$iterator":Ljava/util/Iterator;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    goto :goto_5
.end method

.method public changeCredentialStoragePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "newpassword"    # Ljava/lang/String;

    .prologue
    .line 1461
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1462
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .locals 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certInfo"    # Lcom/samsung/android/knox/keystore/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2374
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2375
    .local v10, "userId":I
    const/16 v20, 0x1

    .line 2376
    .local v20, "ret":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_2

    .line 2377
    :cond_0
    const/16 v20, 0x0

    .line 2473
    .end local v20    # "ret":Z
    :cond_1
    :goto_0
    return v20

    .line 2376
    .restart local v20    # "ret":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2379
    const/16 v17, 0x0

    .line 2380
    .local v17, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/16 v18, 0x0

    .line 2383
    .local v18, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v12, 0x0

    .line 2384
    .local v12, "certificateAlias":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v19

    .line 2386
    .local v19, "removeCert":Ljava/security/cert/Certificate;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    .line 2389
    .local v22, "token":J
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_3

    .line 2390
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v17

    .line 2391
    .local v17, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v18

    .line 2395
    .end local v17    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v18    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_3
    invoke-static {v10}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2396
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_b

    .line 2397
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    .line 2402
    .local v12, "certificateAlias":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v11

    .line 2403
    .local v11, "cert":Ljava/security/cert/Certificate;
    const/16 v16, 0x0

    .line 2404
    .local v16, "issuer":Ljava/lang/String;
    instance-of v4, v11, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    .line 2405
    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    .line 2406
    .local v21, "x509cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2409
    .end local v16    # "issuer":Ljava/lang/String;
    .end local v21    # "x509cert":Ljava/security/cert/X509Certificate;
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2410
    const-string/jumbo v5, " has requested to delete a certificate. Keystore(s) : "

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2411
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v5

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2411
    const-string/jumbo v5, ", Alias : "

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2412
    if-nez v12, :cond_c

    const-string/jumbo v4, "Not available"

    .line 2409
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2413
    const-string/jumbo v5, ", Subject : "

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2413
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2414
    const-string/jumbo v5, ", Issuer : "

    .line 2409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2408
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2423
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certificateAlias":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    :goto_3
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_8

    .line 2427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v22

    .line 2430
    if-nez v12, :cond_6

    .line 2431
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v12

    .line 2440
    :cond_6
    if-eqz v12, :cond_7

    if-eqz v18, :cond_7

    .line 2442
    :try_start_4
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v4

    and-int v20, v20, v4

    .line 2449
    .end local v20    # "ret":Z
    :cond_7
    :goto_4
    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2452
    :cond_8
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_9

    .line 2453
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 2454
    const-string/jumbo v5, "CACERT_"

    const/4 v6, 0x2

    .line 2453
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    and-int v20, v20, v4

    .line 2455
    .local v20, "ret":Z
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 2456
    const-string/jumbo v5, "USRCERT_"

    const/4 v6, 0x2

    .line 2455
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    and-int v20, v20, v4

    .line 2458
    .end local v20    # "ret":Z
    :cond_9
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_a

    .line 2459
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    .line 2460
    const-string/jumbo v8, "CACERT_"

    const/4 v9, 0x4

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    .line 2459
    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    and-int v20, v20, v4

    .line 2461
    .restart local v20    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    .line 2462
    const-string/jumbo v8, "USRCERT_"

    const/4 v9, 0x4

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    .line 2461
    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    and-int v20, v20, v4

    .line 2466
    .end local v20    # "ret":Z
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2468
    if-eqz v17, :cond_1

    .line 2469
    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_0

    .line 2399
    .local v12, "certificateAlias":Ljava/lang/String;
    .local v20, "ret":Z
    :cond_b
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v12

    .local v12, "certificateAlias":Ljava/lang/String;
    goto/16 :goto_1

    .restart local v11    # "cert":Ljava/security/cert/Certificate;
    :cond_c
    move-object v4, v12

    .line 2412
    goto/16 :goto_2

    .line 2419
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certificateAlias":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2420
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateFromKeystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2421
    const/16 v20, 0x0

    .line 2423
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 2467
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v19    # "removeCert":Ljava/security/cert/Certificate;
    .end local v20    # "ret":Z
    .end local v22    # "token":J
    :catchall_0
    move-exception v4

    .line 2468
    if-eqz v17, :cond_d

    .line 2469
    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2467
    :cond_d
    throw v4

    .line 2416
    .restart local v19    # "removeCert":Ljava/security/cert/Certificate;
    .restart local v20    # "ret":Z
    .restart local v22    # "token":J
    :catch_1
    move-exception v14

    .line 2417
    .local v14, "e":Ljava/lang/AssertionError;
    :try_start_9
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2418
    const/16 v20, 0x0

    .line 2423
    :try_start_a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 2422
    .end local v14    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v4

    .line 2423
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2443
    :catch_2
    move-exception v13

    .line 2444
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateFromKeystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2445
    const/4 v4, 0x0

    and-int v20, v20, v4

    .local v20, "ret":Z
    goto/16 :goto_4

    .line 2448
    .end local v13    # "e":Landroid/os/RemoteException;
    .local v20, "ret":Z
    :catchall_2
    move-exception v4

    .line 2449
    :try_start_c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public deleteCertificateFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certInfo"    # Lcom/samsung/android/knox/keystore/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2552
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2622
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 2623
    const-string/jumbo v15, "android.permission.DUMP"

    .line 2622
    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 2624
    const-string/jumbo v14, "Permission Denial: can\'t dump SecurityPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    return-void

    .line 2627
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2629
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v13, Lcom/android/server/enterprise/utils/CertificateUtil;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2630
    .local v13, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v12

    .line 2632
    .local v12, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v14, "[VPN and Apps keystore]"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "userId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2634
    .local v10, "userId":I
    const-string/jumbo v14, "Aliases for user "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2636
    const-string/jumbo v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v15, ""

    .line 2638
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    .line 2637
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2640
    .end local v10    # "userId":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    const-string/jumbo v14, "[Wifi keystore]"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "Aliases: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v15, ""

    const/16 v16, 0x3f2

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    const-string/jumbo v14, "[Default keystore]"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2648
    .local v8, "token":J
    :try_start_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2649
    .restart local v10    # "userId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 2650
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 2649
    invoke-static {v14, v15}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v5

    .line 2651
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 2653
    .local v6, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v6, :cond_2

    .line 2655
    :try_start_1
    const-string/jumbo v14, "Aliases for user "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2656
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2657
    const-string/jumbo v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    invoke-interface {v6}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2662
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2666
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v10    # "userId":I
    :catch_0
    move-exception v4

    .line 2667
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to dump Default keystore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2671
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2674
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2678
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v15, "SECURITY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2679
    const-string/jumbo v17, "deviceEnrolled"

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 2680
    const-string/jumbo v17, "bannerText"

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 2678
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v15, "generic"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2684
    const-string/jumbo v17, "dodBannerVisible"

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 2685
    const-string/jumbo v17, "deviceLastAccessDate"

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 2686
    const-string/jumbo v17, "deviceBootMode"

    const/16 v18, 0x2

    aput-object v17, v16, v18

    .line 2683
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2621
    return-void

    .line 2659
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v10    # "userId":I
    :catch_1
    move-exception v2

    .line 2660
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to dump Default keystore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2662
    :try_start_5
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 2668
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v10    # "userId":I
    :catch_2
    move-exception v3

    .line 2669
    .local v3, "e":Ljava/lang/AssertionError;
    :try_start_6
    const-string/jumbo v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to dump Default keystore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2671
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 2661
    .end local v3    # "e":Ljava/lang/AssertionError;
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v10    # "userId":I
    :catchall_0
    move-exception v14

    .line 2662
    :try_start_7
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2661
    throw v14
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2670
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v10    # "userId":I
    :catchall_1
    move-exception v14

    .line 2671
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    throw v14

    .line 2671
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2
.end method

.method public enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .prologue
    .line 2016
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v9

    .line 2017
    .local v9, "result":Z
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2019
    .local v6, "userId":I
    if-eqz v9, :cond_0

    .line 2020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2022
    .local v10, "token":J
    if-eqz p2, :cond_1

    .line 2024
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2025
    const-string/jumbo v1, " has enabled reboot banner."

    .line 2024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2023
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2034
    if-eqz v9, :cond_0

    if-nez v6, :cond_0

    .line 2035
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2037
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2038
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2045
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v10    # "token":J
    :cond_0
    :goto_1
    return v9

    .line 2028
    .restart local v10    # "token":J
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2029
    const-string/jumbo v1, " has disabled reboot banner."

    .line 2028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2027
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2031
    :catchall_0
    move-exception v0

    .line 2032
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    throw v0

    .line 2039
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v7

    .line 2040
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 2049
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v7

    .line 2050
    .local v7, "result":Z
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2051
    .local v6, "userId":I
    if-eqz v7, :cond_0

    .line 2052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2054
    .local v8, "token":J
    if-eqz p2, :cond_1

    .line 2056
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2057
    const-string/jumbo v1, " has enabled reboot banner with text "

    .line 2056
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2055
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2067
    .end local v8    # "token":J
    :cond_0
    return v7

    .line 2060
    .restart local v8    # "token":J
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2061
    const-string/jumbo v1, " has disabled reboot banner."

    .line 2060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2059
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2063
    :catchall_0
    move-exception v0

    .line 2064
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2063
    throw v0
.end method

.method public formatInternalStorage(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isExternal"    # Z

    .prologue
    .line 722
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 724
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 727
    .local v10, "ident":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 726
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v15

    .line 728
    .local v15, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v18

    .line 729
    .local v18, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const/4 v13, 0x0

    .line 731
    .local v13, "isExtSDsupported":Z
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .line 732
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    const/4 v13, 0x1

    goto :goto_0

    .line 738
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    if-eqz p2, :cond_4

    .line 739
    if-eqz v13, :cond_3

    .line 740
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 770
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "SecurityPolicy"

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has requested wipe of device external memory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 772
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 769
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 775
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    const-string/jumbo v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatStorageCard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isExternal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v2

    .line 742
    :cond_3
    :try_start_1
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "This device doesn\'t suppot External SD card"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 763
    :catch_0
    move-exception v9

    .line 764
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "formatStorageCard fail"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 748
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 749
    .local v14, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v14, :cond_5

    .line 750
    invoke-virtual {v14}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 753
    :cond_5
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.REASON"

    const-string/jumbo v3, "DeviceWipeByMDM"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 759
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "SecurityPolicy"

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has requested full wipe of device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 761
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 758
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 2304
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2306
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2307
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2310
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2311
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2339
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-lt v2, v3, :cond_5

    .line 2340
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    sget v2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 2348
    :goto_1
    return-object v0

    .line 2314
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2315
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 2316
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2317
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2319
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    .line 2320
    const-string/jumbo v2, "USRCERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2322
    const-string/jumbo v2, "CACERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2325
    :cond_3
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    .line 2327
    const-string/jumbo v2, "USRCERT_"

    .line 2326
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2329
    const-string/jumbo v2, "CACERT_"

    .line 2328
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2332
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 2345
    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getCertificatesFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2547
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1477
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1478
    const-string/jumbo v7, "SecurityPolicy"

    const-string/jumbo v8, " getCredentialStorageStatus calls from Profile return default value"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const/4 v7, 0x4

    return v7

    .line 1481
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    .line 1482
    const-string/jumbo v8, "android.permission.sec.MDM_SECURITY"

    .line 1481
    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    .line 1483
    .local v6, "whiteListedCxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-nez v6, :cond_2

    .line 1484
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->needtoCheckPackageCaller()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1485
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1492
    :goto_0
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1493
    .local v3, "userId":I
    const/4 v0, 0x4

    .line 1494
    .local v0, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1496
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v3}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    .line 1497
    .local v2, "state":Landroid/security/KeyStore$State;
    sget-object v7, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 1498
    const/4 v0, 0x1

    .line 1512
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1514
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :goto_2
    return v0

    .line 1487
    .end local v0    # "credentialStorageStatus":I
    .end local v3    # "userId":I
    .end local v4    # "token":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 1490
    :cond_2
    move-object p1, v6

    goto :goto_0

    .line 1500
    .restart local v0    # "credentialStorageStatus":I
    .restart local v2    # "state":Landroid/security/KeyStore$State;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    :cond_3
    :try_start_1
    sget-object v7, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1501
    const/4 v0, 0x2

    goto :goto_1

    .line 1503
    :cond_4
    sget-object v7, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 1504
    const/4 v0, 0x3

    goto :goto_1

    .line 1506
    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    .line 1508
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :catch_0
    move-exception v1

    .line 1509
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_2
    const-string/jumbo v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Keystore State Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    const/4 v0, 0x4

    .line 1512
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1511
    .end local v1    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v7

    .line 1512
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1511
    throw v7
.end method

.method public getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2231
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2232
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesOnDevice(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1704
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1707
    if-eqz p2, :cond_1

    .line 1708
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1709
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1710
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 1713
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1720
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1717
    :cond_3
    const-string/jumbo v2, "@"

    const-string/jumbo v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1718
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1729
    if-eqz p2, :cond_1

    .line 1730
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1731
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1732
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 1735
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    const-string/jumbo v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    const-string/jumbo v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1744
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1741
    :cond_3
    const-string/jumbo v2, "@"

    const-string/jumbo v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1742
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1754
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1757
    if-eqz p3, :cond_0

    .line 1758
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v8, "tempfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1760
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1765
    .end local v8    # "tempfile":Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1766
    :cond_1
    return v11

    .line 1769
    :cond_2
    if-eqz p2, :cond_4

    .line 1770
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1771
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1772
    :cond_3
    return v11

    .line 1777
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1778
    .local v7, "root":Ljava/io/File;
    const/4 v5, 0x0

    .line 1779
    .local v5, "outFile":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1781
    .local v0, "allFiles":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .local v1, "allFiles":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1784
    .local v6, "outFile":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .end local v5    # "outFile":Ljava/io/PrintWriter;
    move-result v9

    if-eqz v9, :cond_5

    .line 1785
    if-eqz v7, :cond_5

    .line 1786
    const/4 v9, 0x0

    invoke-direct {p0, v7, v9, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1793
    :cond_5
    if-eqz v6, :cond_6

    .line 1794
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 1797
    :cond_6
    if-eqz v1, :cond_7

    .line 1798
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1803
    :cond_7
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 1799
    :catch_0
    move-exception v2

    .line 1800
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1789
    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    .line 1793
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .local v4, "ioex":Ljava/io/IOException;
    :goto_1
    if-eqz v5, :cond_8

    .line 1794
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1797
    :cond_8
    if-eqz v0, :cond_9

    .line 1798
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1790
    :cond_9
    :goto_2
    return v11

    .line 1799
    :catch_2
    move-exception v2

    .line 1800
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1791
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioex":Ljava/io/IOException;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v9

    .line 1793
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    :goto_3
    if-eqz v5, :cond_a

    .line 1794
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1797
    :cond_a
    if-eqz v0, :cond_b

    .line 1798
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1791
    :cond_b
    :goto_4
    throw v9

    .line 1799
    :catch_3
    move-exception v2

    .line 1800
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "SecurityPolicy"

    const-string/jumbo v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1791
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .local v0, "allFiles":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .local v5, "outFile":Ljava/io/PrintWriter;
    goto :goto_3

    .line 1789
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .local v5, "outFile":Ljava/io/PrintWriter;
    :catch_4
    move-exception v4

    .restart local v4    # "ioex":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v4    # "ioex":Ljava/io/IOException;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_5
    move-exception v4

    .restart local v4    # "ioex":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .local v5, "outFile":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public getInstalledCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1302
    const-string/jumbo v1, "USRCERT_"

    .line 1301
    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-result-object v0

    .line 1303
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1304
    const-string/jumbo v1, "CACERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-result-object v0

    .line 1306
    :cond_0
    return-object v0
.end method

.method public getInstalledCertificateNames(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1337
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1338
    return-object v0
.end method

.method public getInstalledCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    const-string/jumbo v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1122
    const-string/jumbo v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1123
    const-string/jumbo v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    const-string/jumbo v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1125
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1126
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    .line 1127
    return-object v0
.end method

.method public getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2835
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2836
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2838
    .local v7, "userId":I
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 2839
    const-string/jumbo v9, "packageName"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 2840
    const-string/jumbo v9, "signature"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 2843
    .local v4, "returnColumns":[Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2844
    .local v5, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2846
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2847
    const-string/jumbo v10, "CertificateWhiteListTable"

    .line 2846
    invoke-virtual {v9, v10, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 2849
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2851
    .local v3, "packagesList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2852
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2853
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v9, "signature"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2855
    .local v6, "signature":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v9, v2, v6}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2858
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 2117
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2119
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "SECURITY"

    .line 2120
    const-string/jumbo v6, "bannerText"

    .line 2119
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 2121
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 2122
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2123
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2124
    return-object v1

    .line 2128
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "value$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v7
.end method

.method public getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1049
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 1050
    const-string/jumbo v5, "device_policy"

    .line 1049
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1051
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    return v4

    .line 1052
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    const/4 v4, 0x0

    return v4

    .line 1055
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    throw v4
.end method

.method public getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1098
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 1099
    const-string/jumbo v5, "device_policy"

    .line 1098
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1100
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1105
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    return v4

    .line 1101
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    const/4 v4, 0x0

    return v4

    .line 1104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1105
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1104
    throw v4
.end method

.method public getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1114
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1115
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1588
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1589
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1590
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1591
    if-eqz p5, :cond_0

    .line 1592
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1594
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1595
    :cond_1
    const-string/jumbo v5, "SecurityPolicy"

    const-string/jumbo v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    return v7

    .line 1594
    :cond_2
    array-length v5, p3

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    .line 1598
    const/4 v1, 0x0

    .line 1599
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1601
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1602
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 1603
    .local v4, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1611
    .end local v1    # "ret":Z
    .end local v4    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1615
    :goto_1
    if-eqz v1, :cond_3

    .line 1616
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V

    .line 1618
    :cond_3
    return v1

    .line 1605
    .restart local v1    # "ret":Z
    :cond_4
    :try_start_1
    const-string/jumbo v5, "SecurityPolicy"

    const-string/jumbo v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1606
    const/4 v1, 0x0

    goto :goto_0

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "SecurityPolicy"

    const-string/jumbo v6, "installCertificate EX: "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1611
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1610
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1611
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    throw v5
.end method

.method public installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2266
    move/from16 v0, p6

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2268
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2270
    .local v8, "userId":I
    const/4 v9, 0x0

    .line 2271
    .local v9, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2272
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2273
    if-eqz p5, :cond_0

    .line 2274
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 2276
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2278
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2279
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Keystore is not unlocked"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    .end local v9    # "ret":Z
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2298
    return v9

    .line 2280
    .restart local v9    # "ret":Z
    :cond_1
    :try_start_1
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2281
    if-nez p2, :cond_3

    .line 2282
    :cond_2
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2294
    .end local v9    # "ret":Z
    :catchall_0
    move-exception v3

    .line 2295
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2294
    throw v3

    .line 2281
    .restart local v9    # "ret":Z
    :cond_3
    if-eqz p3, :cond_2

    :try_start_2
    array-length v3, p3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 2285
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2286
    const-string/jumbo v4, " has requested to install a certificate. Keystore(s) : "

    .line 2285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2287
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v4

    .line 2285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2287
    const-string/jumbo v4, ", Name : "

    .line 2285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2284
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2288
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v2, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 2289
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .local v9, "ret":Z
    goto :goto_0
.end method

.method public installCertificateToUserKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2543
    const/4 v0, 0x0

    return v0
.end method

.method public installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 496
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 497
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 500
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    const-string/jumbo v4, "senderpackagename"

    const-string/jumbo v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 504
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 507
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    throw v4
.end method

.method public installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 519
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    const-string/jumbo v4, "senderpackagename"

    const-string/jumbo v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 525
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .param p1, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 477
    return-void
.end method

.method public isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2167
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2169
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2173
    const/4 v1, 0x0

    .line 2175
    .local v1, "status":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "dodBannerVisible"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2180
    .end local v1    # "status":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    const/4 v2, 0x1

    return v2

    .line 2176
    .restart local v1    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "isDodBannerVisibleAsUser facing exception, return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2183
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1002
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .line 1003
    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1007
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1003
    return v4

    .line 1004
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "SecurityPolicy"

    const-string/jumbo v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    const/4 v4, 0x0

    return v4

    .line 1006
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1007
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1006
    throw v4
.end method

.method public isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 970
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 974
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 975
    const-string/jumbo v6, "device_policy"

    .line 974
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 976
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 977
    .local v2, "status":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 978
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 979
    :cond_0
    const/4 v3, 0x1

    .line 986
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    return v3

    .line 986
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    return v7

    .line 983
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "status":I
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v6, "is Internal Storage Encrypted ?"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 986
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    return v7

    .line 985
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 986
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    throw v3
.end method

.method public isRebootBannerEnabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2103
    const/4 v0, 0x0

    .line 2105
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "SECURITY"

    .line 2106
    const-string/jumbo v6, "deviceEnrolled"

    .line 2105
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2107
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2108
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 2109
    move v0, v1

    .line 2113
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2098
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2099
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public lockoutDevice(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1955
    .local p4, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1958
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1963
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1964
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1966
    .local v8, "token":J
    if-eqz p3, :cond_0

    .line 1967
    :try_start_0
    const-string/jumbo v11, "lock_fmm_Message"

    move-object/from16 v0, p3

    invoke-static {v3, v11, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1968
    const-string/jumbo v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set message done("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1971
    const-string/jumbo v12, "lock_fmm_phone"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v12, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1972
    const-string/jumbo v12, "SecurityPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set phones done("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1975
    .local v5, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 1976
    .local v7, "sha1":[B
    const/4 v11, 0x2

    invoke-static {v7, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1977
    .local v2, "base64":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v2, v12}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 1980
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1981
    .local v6, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1984
    const-string/jumbo v11, "window"

    .line 1983
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 1985
    .local v10, "winMgr":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    .end local v2    # "base64":Ljava/lang/String;
    .end local v5    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "manager":Landroid/os/PowerManager;
    .end local v7    # "sha1":[B
    .end local v10    # "winMgr":Landroid/view/IWindowManager;
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1954
    return-void

    .line 1959
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "token":J
    :cond_2
    const-string/jumbo v11, "SecurityPolicy"

    const-string/jumbo v12, "only PIN Password is allowed as limitation from Keyguard FMM "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    return-void

    .line 1986
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "token":J
    :catch_0
    move-exception v4

    .line 1987
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception is thrown when trying to lock out the device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 8
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v3, 0x0

    .line 560
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v4, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [B

    .line 567
    .local v0, "buffer":[B
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x1000

    invoke-virtual {p1, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .local v5, "length":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 568
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 571
    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 572
    .end local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    if-eqz v3, :cond_0

    .line 577
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 580
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object p2

    .line 570
    .restart local v0    # "buffer":[B
    .restart local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 576
    if-eqz v4, :cond_2

    .line 577
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    move-object v3, v4

    .end local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .line 573
    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v2

    .line 574
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 576
    if-eqz v3, :cond_0

    .line 577
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_2

    .line 575
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 576
    :goto_4
    if-eqz v3, :cond_3

    .line 577
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 575
    :cond_3
    throw v6

    .restart local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_4

    .line 571
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 573
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 2618
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2556
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2560
    return-void
.end method

.method public onKeyguardLaunched()V
    .locals 12

    .prologue
    .line 284
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v7, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 297
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    .line 298
    .local v3, "mPersonaManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 301
    .local v8, "token":J
    const/4 v6, 0x0

    .line 302
    .local v6, "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getActivePersonas()Ljava/util/List;

    move-result-object v6

    .line 303
    .local v6, "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v6, :cond_3

    .line 304
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 305
    .local v1, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v5, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 306
    .local v5, "personaId":I
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 307
    new-instance v4, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 308
    const/4 v10, 0x1

    .line 307
    invoke-direct {v4, p0, v7, v5, v10}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Landroid/content/Context;II)V

    .line 309
    .local v4, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v4    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_1
    sget-object v7, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-boolean v7, v1, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isActivitePersona(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return-void

    .line 332
    .end local v1    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "personaId":I
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 333
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    .end local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 338
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    throw v7
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2570
    return-void
.end method

.method public powerOffDevice(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1645
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1647
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1650
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "Security"

    const-string/jumbo v5, "powerOffDevice"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :goto_0
    const-string/jumbo v4, "SecurityPolicy"

    const-string/jumbo v5, "powerOffDevice():EDM power off device start..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1657
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    .line 1658
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1659
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1643
    return-void

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readFile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, 0x0

    .line 1907
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1909
    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1910
    :cond_0
    return v10

    .line 1912
    :cond_1
    const/4 v2, 0x0

    .line 1913
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1916
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v7, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    .local v3, "fileStreamInp":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1921
    .local v5, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v8, 0x800

    :try_start_2
    new-array v0, v8, [B

    .line 1923
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_4

    .line 1924
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1929
    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .line 1930
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v7    # "mFile":Ljava/io/File;
    :goto_1
    :try_start_3
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, "readFile IOException "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1934
    if-eqz v2, :cond_2

    .line 1935
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1940
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 1941
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1931
    :cond_3
    :goto_3
    return v10

    .line 1926
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1927
    const/4 v8, 0x1

    .line 1934
    if-eqz v3, :cond_5

    .line 1935
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1940
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    .line 1941
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1927
    :cond_6
    :goto_5
    return v8

    .line 1936
    :catch_1
    move-exception v1

    .line 1937
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1942
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1943
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1936
    .end local v0    # "buffer":[B
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .end local v7    # "mFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 1937
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, "Error closing cursor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1942
    :catch_4
    move-exception v1

    .line 1943
    const-string/jumbo v8, "SecurityPolicy"

    const-string/jumbo v9, "Error closing cursor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1932
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1934
    :goto_6
    if-eqz v2, :cond_7

    .line 1935
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1940
    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    .line 1941
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1932
    :cond_8
    :goto_8
    throw v8

    .line 1936
    :catch_5
    move-exception v1

    .line 1937
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1942
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1943
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SecurityPolicy"

    const-string/jumbo v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1932
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_6

    .line 1929
    .end local v7    # "mFile":Ljava/io/File;
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public readFileWithEncryptionAndCompression(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/List;
    .locals 28
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 585
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v23, "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 587
    :cond_0
    const/16 v24, 0x0

    return-object v24

    .line 589
    :cond_1
    const/4 v13, 0x0

    .line 590
    .local v13, "fileStreamInp":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 591
    .local v15, "fileStreamOut":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 594
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .local v21, "mFile":Ljava/io/File;
    new-instance v22, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ".temp"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v22, "mTempFile":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSessionKey()Ljava/security/Key;

    move-result-object v17

    .line 597
    .local v17, "inKey":Ljava/security/Key;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getInitialVector()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v18

    .line 599
    .local v18, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v17, :cond_2

    if-nez v18, :cond_3

    .line 668
    :cond_2
    return-object v23

    .line 603
    :cond_3
    const-string/jumbo v24, "SecurityPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " output  size  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    .local v14, "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    .local v16, "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_23
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-result-object v15

    .line 609
    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .local v15, "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 610
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 613
    new-instance v19, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v17 .. v17}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 615
    .local v19, "ks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_22
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 616
    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .local v13, "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v16, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 618
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_5
    const-string/jumbo v24, "SecurityPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " nfile  size  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "can read ? "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->canRead()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " last Md  ? "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v24, "AES/CBC/PKCS7Padding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 621
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 622
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_24
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 625
    .local v6, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    const/16 v24, 0x1000

    :try_start_6
    move/from16 v0, v24

    new-array v7, v0, [B

    .line 626
    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v7, "d":[B
    :goto_0
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v20

    .local v20, "len":I
    if-lez v20, :cond_7

    .line 627
    const-string/jumbo v24, "SecurityPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "::readFileWithEncryptionAndCompression() :   len   "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v6, v7, v0, v1}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_25
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_0

    .line 640
    .end local v7    # "d":[B
    .end local v20    # "len":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v5, v6

    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object/from16 v15, v16

    .line 641
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v17    # "inKey":Ljava/security/Key;
    .end local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v21    # "mFile":Ljava/io/File;
    .end local v22    # "mTempFile":Ljava/io/File;
    :goto_1
    :try_start_7
    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 651
    if-eqz v5, :cond_4

    .line 652
    :try_start_8
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    .line 657
    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    .line 658
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    .line 663
    :cond_5
    :goto_3
    if-eqz v15, :cond_6

    .line 664
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    .line 668
    :cond_6
    :goto_4
    return-object v23

    .line 633
    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v7    # "d":[B
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v17    # "inKey":Ljava/security/Key;
    .restart local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v20    # "len":I
    .restart local v21    # "mFile":Ljava/io/File;
    .restart local v22    # "mTempFile":Ljava/io/File;
    :cond_7
    :try_start_b
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 635
    invoke-interface/range {v17 .. v17}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual/range {v18 .. v18}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    const-string/jumbo v24, "SecurityPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_25
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 651
    if-eqz v6, :cond_8

    .line 652
    :try_start_c
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 657
    :cond_8
    :goto_5
    if-eqz v13, :cond_9

    .line 658
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 663
    :cond_9
    :goto_6
    if-eqz v16, :cond_a

    .line 664
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 668
    :cond_a
    :goto_7
    return-object v23

    .line 653
    :catch_1
    move-exception v8

    .line 654
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 646
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v7    # "d":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v17    # "inKey":Ljava/security/Key;
    .end local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v20    # "len":I
    .end local v21    # "mFile":Ljava/io/File;
    .end local v22    # "mTempFile":Ljava/io/File;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :catch_4
    move-exception v9

    .line 647
    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v9, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 651
    if-eqz v5, :cond_b

    .line 652
    :try_start_10
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 657
    :cond_b
    :goto_9
    if-eqz v13, :cond_c

    .line 658
    :try_start_11
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 663
    :cond_c
    :goto_a
    if-eqz v15, :cond_d

    .line 664
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 668
    :cond_d
    :goto_b
    return-object v23

    .line 653
    :catch_5
    move-exception v8

    .line 654
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 644
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :catch_8
    move-exception v10

    .line 645
    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v10, "e":Ljava/security/InvalidKeyException;
    :goto_c
    :try_start_13
    invoke-virtual {v10}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 651
    if-eqz v5, :cond_e

    .line 652
    :try_start_14
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    .line 657
    :cond_e
    :goto_d
    if-eqz v13, :cond_f

    .line 658
    :try_start_15
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 663
    :cond_f
    :goto_e
    if-eqz v15, :cond_10

    .line 664
    :try_start_16
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 668
    :cond_10
    :goto_f
    return-object v23

    .line 653
    :catch_9
    move-exception v8

    .line 654
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 642
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .restart local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :catch_c
    move-exception v12

    .line 643
    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v12, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_10
    :try_start_17
    invoke-virtual {v12}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 651
    if-eqz v5, :cond_11

    .line 652
    :try_start_18
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 657
    :cond_11
    :goto_11
    if-eqz v13, :cond_12

    .line 658
    :try_start_19
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 663
    :cond_12
    :goto_12
    if-eqz v15, :cond_13

    .line 664
    :try_start_1a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    .line 668
    :cond_13
    :goto_13
    return-object v23

    .line 653
    :catch_d
    move-exception v8

    .line 654
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 653
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_10
    move-exception v8

    .line 654
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 649
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v24

    .line 651
    :goto_14
    if-eqz v5, :cond_14

    .line 652
    :try_start_1b
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    .line 657
    :cond_14
    :goto_15
    if-eqz v13, :cond_15

    .line 658
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 663
    :cond_15
    :goto_16
    if-eqz v15, :cond_16

    .line 664
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    .line 668
    :cond_16
    :goto_17
    return-object v23

    .line 653
    :catch_13
    move-exception v8

    .line 654
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor cipherStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 659
    .end local v8    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v8

    .line 660
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamInp"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 665
    .end local v8    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v8

    .line 666
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "SecurityPolicy"

    const-string/jumbo v25, "Error closing cursor fileStreamOut"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 649
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v17    # "inKey":Ljava/security/Key;
    .restart local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v21    # "mFile":Ljava/io/File;
    .restart local v22    # "mTempFile":Ljava/io/File;
    :catchall_1
    move-exception v24

    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_14

    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v24

    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_14

    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catchall_3
    move-exception v24

    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_14

    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v24

    move-object v5, v6

    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_14

    .line 640
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v17    # "inKey":Ljava/security/Key;
    .end local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v21    # "mFile":Ljava/io/File;
    .end local v22    # "mTempFile":Ljava/io/File;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :catch_16
    move-exception v11

    .restart local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    goto/16 :goto_1

    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v17    # "inKey":Ljava/security/Key;
    .restart local v18    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v21    # "mFile":Ljava/io/File;
    .restart local v22    # "mTempFile":Ljava/io/File;
    :catch_17
    move-exception v11

    .restart local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_18
    move-exception v11

    .restart local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_19
    move-exception v11

    .restart local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 642
    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v12

    .restart local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_10

    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v12

    .restart local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_10

    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1c
    move-exception v12

    .restart local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_10

    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v12

    .restart local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    move-object v5, v6

    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_10

    .line 644
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_1e
    move-exception v10

    .restart local v10    # "e":Ljava/security/InvalidKeyException;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1f
    move-exception v10

    .restart local v10    # "e":Ljava/security/InvalidKeyException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_20
    move-exception v10

    .restart local v10    # "e":Ljava/security/InvalidKeyException;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_21
    move-exception v10

    .restart local v10    # "e":Ljava/security/InvalidKeyException;
    move-object v5, v6

    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 646
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_22
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_23
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v13    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v19    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_24
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v5    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_25
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_8
.end method

.method public removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1663
    if-nez p2, :cond_0

    .line 1664
    const/4 v11, 0x0

    return v11

    .line 1666
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1667
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 1669
    .local v10, "userId":I
    const/4 v7, 0x1

    .line 1670
    .local v7, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1672
    .local v8, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 1673
    .local v3, "am":Landroid/accounts/AccountManager;
    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 1674
    .local v2, "accs":[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    array-length v11, v2

    if-lez v11, :cond_1

    .line 1675
    const/4 v11, 0x0

    array-length v12, v2

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v6, v2, v11

    .line 1676
    .local v6, "item":Landroid/accounts/Account;
    const-string/jumbo v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeAccountsByType : account = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v14, v15, v13}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 1675
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1681
    .end local v6    # "item":Landroid/accounts/Account;
    :cond_1
    const-string/jumbo v11, "SecurityPolicy"

    const-string/jumbo v12, "removeAccountsByType : return null"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    .end local v2    # "accs":[Landroid/accounts/Account;
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :cond_2
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    if-nez v10, :cond_3

    .line 1690
    new-instance v5, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1692
    .local v5, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v11, "SecurityPolicy"

    const-string/jumbo v12, "removeAccountsByType"

    move-object/from16 v0, p2

    invoke-virtual {v5, v11, v12, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const-string/jumbo v11, "SecurityPolicy"

    const-string/jumbo v12, "removeAccountsByType calling gearPolicyManager  "

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1699
    .end local v5    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_2
    return v7

    .line 1683
    :catch_0
    move-exception v4

    .line 1684
    .local v4, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1685
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1694
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v4

    .line 1695
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1408
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-result-object v0

    .line 1409
    .local v0, "cert":Lcom/samsung/android/knox/keystore/CertificateInfo;
    const/4 v2, 0x4

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1410
    .local v1, "result":Z
    const/4 v2, 0x2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1411
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1412
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1414
    :cond_0
    return v1
.end method

.method public removeDeviceLockout(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1998
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1999
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2001
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 2002
    .local v2, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2004
    const-string/jumbo v3, "lock_fmm_Message"

    invoke-static {v0, v3, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2005
    const-string/jumbo v3, "lock_fmm_phone"

    invoke-static {v0, v3, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2006
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2007
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, v9, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 2008
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    return-void
.end method

.method public removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2862
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2864
    const/4 v3, 0x1

    .line 2865
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 2867
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_5

    .line 2868
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "result":Z
    .local v1, "appIdentity$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 2870
    .local v0, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    if-nez v0, :cond_0

    .line 2871
    const/4 v3, 0x0

    .line 2872
    .restart local v3    # "result":Z
    goto :goto_0

    .line 2875
    .end local v3    # "result":Z
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2876
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2877
    const-string/jumbo v4, "packageName"

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2880
    const-string/jumbo v4, "signature"

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CertificateWhiteListTable"

    invoke-virtual {v4, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    and-int/2addr v3, v4

    .local v3, "result":Z
    goto :goto_0

    .end local v3    # "result":Z
    :cond_2
    move v4, v6

    goto :goto_1

    .line 2886
    .end local v0    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "appIdentity$iterator":Ljava/util/Iterator;
    .local v2, "cv":Landroid/content/ContentValues;
    .local v3, "result":Z
    :cond_3
    const/4 v3, 0x0

    .line 2894
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "result":Z
    :cond_4
    :goto_2
    return v3

    .line 2889
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "result":Z
    :cond_5
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2890
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2891
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CertificateWhiteListTable"

    invoke-virtual {v4, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_6

    move v3, v5

    .local v3, "result":Z
    :goto_3
    goto :goto_2

    .local v3, "result":Z
    :cond_6
    move v3, v6

    goto :goto_3
.end method

.method public resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1521
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1522
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1523
    .local v6, "userId":I
    const/4 v8, 0x0

    .line 1524
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1527
    .local v10, "token":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1528
    const-string/jumbo v1, " has requested to clear credential storages"

    .line 1527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1526
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1535
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x4

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v8

    .line 1537
    .local v8, "ret":Z
    if-nez v6, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x2

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/2addr v8, v0

    .line 1543
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    .line 1544
    .local v9, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    and-int/2addr v8, v0

    .line 1546
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1551
    .end local v9    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    return v8

    .line 1547
    :catch_0
    move-exception v7

    .line 1548
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "resetCredentialStorage EX: "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1550
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ret":Z
    :catchall_0
    move-exception v0

    .line 1551
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    throw v0
.end method

.method public setCredentialStoragePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1444
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 2193
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2194
    const/4 v4, 0x0

    return v4

    .line 2197
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2198
    .local v3, "userId":I
    const/4 v2, 0x1

    .line 2202
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "deviceLastAccessDate"

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2205
    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 2208
    sget-object v4, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2211
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .line 2212
    .local v1, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    if-eqz v1, :cond_1

    .line 2213
    invoke-virtual {v1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->unregisterPersonaObserverReceiver()V

    .line 2215
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    .end local v1    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_2
    :goto_0
    return v2

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2137
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2138
    return v3

    .line 2140
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 2141
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 2145
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dodBannerVisible"

    .line 2146
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2145
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    :goto_0
    return v1

    .line 2148
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 916
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 918
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v8

    .line 919
    .local v8, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    if-nez p2, :cond_0

    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    return-void

    .line 924
    :cond_0
    if-eqz p2, :cond_4

    .line 925
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    .line 940
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 942
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityPolicy"

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has requested encryption of external storage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 944
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 941
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 946
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 947
    .local v12, "userId":I
    if-nez v12, :cond_3

    .line 948
    new-instance v9, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .local v9, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption"

    invoke-virtual {v9, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 951
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 960
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .end local v12    # "userId":I
    :goto_2
    return-void

    .line 927
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 957
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_0
    move-exception v7

    .line 958
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "is External Storage Encrypted?"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 960
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 952
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .restart local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_1
    move-exception v7

    .line 953
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 959
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v12    # "userId":I
    :catchall_0
    move-exception v0

    .line 960
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw v0
.end method

.method public setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 852
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 854
    return-void

    .line 855
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 857
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 858
    const-string/jumbo v3, "device_policy"

    .line 857
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 859
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    return-void

    .line 863
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 868
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    return-void

    .line 864
    :cond_3
    :try_start_2
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    return-void

    .line 871
    :cond_4
    :try_start_3
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz p2, :cond_5

    .line 874
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 875
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.START_CRYPT_INTERSTITIAL"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 884
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "SecurityPolicy"

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has requested encryption of internal storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 886
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 883
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 889
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 890
    .local v13, "userId":I
    if-nez v13, :cond_6

    .line 891
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 894
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_4
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 895
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 904
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "userId":I
    :goto_2
    return-void

    .line 879
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.START_ENCRYPTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .restart local v12    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 901
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 902
    .local v10, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "is Internal Storage Encrypted?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 904
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 896
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v13    # "userId":I
    :catch_1
    move-exception v10

    .line 897
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 903
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v13    # "userId":I
    :catchall_0
    move-exception v2

    .line 904
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    throw v2
.end method

.method public setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1018
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 1019
    const-string/jumbo v7, "device_policy"

    .line 1018
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1020
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1029
    .local v3, "userId":I
    if-nez v3, :cond_0

    .line 1030
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1035
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1036
    const-string/jumbo v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 1021
    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireDeviceEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1024
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    throw v6

    .line 1037
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .line 1038
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1067
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 1068
    const-string/jumbo v7, "device_policy"

    .line 1067
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1069
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1077
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1078
    .local v3, "userId":I
    if-nez v3, :cond_0

    .line 1079
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1084
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1085
    const-string/jumbo v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1062
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 1070
    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1074
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1073
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1074
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    throw v6

    .line 1086
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .line 1087
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startBannerService(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v0, "intentBanner":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v2, "com.samsung.android.mdm"

    const-string/jumbo v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 446
    .end local v0    # "intentBanner":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 447
    const-string/jumbo v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBannerService() failed. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_2
    return v1

    .line 444
    .restart local v0    # "intentBanner":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopBannerService(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "ret":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v0, "intentBanner":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.mdm"

    const-string/jumbo v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v1

    .line 456
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 457
    const-string/jumbo v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBannerService() failed. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    return v1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2567
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    return-void
.end method

.method public unlockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1366
    const/4 v2, 0x0

    .line 1367
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1369
    .local v4, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1371
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1372
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    const/4 v2, 0x1

    .line 1377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1380
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1376
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1376
    throw v3
.end method

.method public wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1629
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1632
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v2, "Security"

    const-string/jumbo v3, "wipeDevice"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1633
    const-string/jumbo v2, "SecurityPolicy"

    const-string/jumbo v3, "GearPolicy SetBooleanTypePolicy wipeDevice"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    :goto_0
    return v5

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
