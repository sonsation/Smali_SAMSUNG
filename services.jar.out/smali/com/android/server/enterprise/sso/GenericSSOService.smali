.class public Lcom/android/server/enterprise/sso/GenericSSOService;
.super Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;
.source "GenericSSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;,
        Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;,
        Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIGURESSO:I = 0x5

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DELETE_KEYS:I = 0x6

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final GENERIC_SSO_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SSO"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYSTORE_PASSWORD:Ljava/lang/String; = "password_for_secret_key"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEYWORD_CUSTOMERBRAND:Ljava/lang/String; = "customerbrand"

.field private static final KEYWORD_DEVICE_CERTIFICATE:Ljava/lang/String; = "devicecertificate"

.field private static final KEYWORD_SSOPROVIDER:Ljava/lang/String; = "ssoprovider"

.field private static final KEYWORD_TOKEN_APPPKGNAME:Ljava/lang/String; = "packagename"

.field private static final KEYWORD_TOKEN_CACHE:Ljava/lang/String; = "apptoken"

.field private static final KEYWORD_USER_CERTIFICATE:Ljava/lang/String; = "usercertificate"

.field private static final KEYWORD_VENDORCONFIG:Ljava/lang/String; = "vendorconfigs"

.field private static final KEYWORD_WHITELISTPACKAGE:Ljava/lang/String; = "whitelistpackage"

.field private static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "KnoxSSOKey"

.field private static final KNOXSSO_CONF_DATA_FILENAME:Ljava/lang/String; = "ssoconfig.xml"

.field private static final KNOXSSO_DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final KNOXSSO_SECRETKEY_FILE:Ljava/lang/String; = "KnoxSSO_SCKF"

.field private static final KNOXSSO_TMP_CONF_DATA_FILENAME:Ljava/lang/String; = "tmpssoconfig.xml"

.field private static final KNOXSSO_TOKEN_FILENAME:Ljava/lang/String; = "ssotoken.xml"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NTP_CONNECTION_TIMEOUT:J = 0x7d0L

.field private static final PKGCERT:I = 0x1

.field private static final PKGNAME:I = 0x0

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SET_UNENROLL_FLAG:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GenericSSOService"

.field private static final TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static final TOKEN:I = 0x2

.field private static final UNREGISTER:I = 0x1

.field private static final USERINFO:I = 0x3

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static requestConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field private static tokenConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

.field private initElapsedTime:J

.field private initUTCTime:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/sso/GenericSSOService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5()Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-object v0
.end method

.method static synthetic -get6()Ljava/security/KeyStore;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic -get7()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/sso/GenericSSOService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide p1
.end method

.method static synthetic -set1(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method static synthetic -set2(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object p0
.end method

.method static synthetic -set3(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    return-object p0
.end method

.method static synthetic -set4(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    .line 269
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x2710

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;-><init>()V

    .line 254
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    .line 255
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 266
    const-string/jumbo v0, "genericsso_whitelist_all_apps"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 274
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    .line 276
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 278
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 279
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 280
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In GenericSSOService: registerReceiverForKeyClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->registerReceiverForKeyClear()V

    .line 283
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .line 284
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/sso/SSOVersion;->writeVersionInProperties(Landroid/content/Context;)V

    .line 285
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In GenericSSOService: Generic SSO Service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private _addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2744
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sso/config/WhiteListPackage;>;"
    if-nez p1, :cond_1

    .line 2745
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_0

    .line 2746
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackages: cxtInfo is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_0
    const/16 v19, -0x3

    return v19

    .line 2749
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2750
    .local v12, "mdmUID":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v19

    if-nez v19, :cond_3

    .line 2751
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_2

    .line 2752
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackages: MDM uid is not matched"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_2
    const/16 v19, -0xa

    return v19

    .line 2755
    :cond_3
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_4

    .line 2756
    const-string/jumbo v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In _addWhiteListPackage: UserId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_4
    if-nez p2, :cond_6

    .line 2758
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_5

    .line 2759
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In addWhiteListPackage: Invalid Parameters."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_5
    const/16 v19, -0x3

    return v19

    .line 2762
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_8

    .line 2763
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_7

    .line 2764
    const-string/jumbo v19, "GenericSSOService"

    .line 2765
    const-string/jumbo v20, "In _addWhiteListPackage: No SSO Vendors have been enrolled."

    .line 2764
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_7
    const/16 v19, -0x6

    return v19

    .line 2769
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2770
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 2771
    .local v16, "solution":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2772
    .local v3, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .local v15, "pack$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/sso/config/WhiteListPackage;

    .line 2773
    .local v14, "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2774
    .local v3, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_b

    .line 2775
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_a

    .line 2776
    const-string/jumbo v19, "GenericSSOService"

    .line 2777
    const-string/jumbo v20, "In _addWhiteListPackage: Invalid Parameters. Package Name or Certificate is null"

    .line 2776
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_a
    const/16 v19, -0x3

    return v19

    .line 2780
    :cond_b
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getConfigMap()Ljava/util/Map;

    move-result-object v5

    .line 2782
    .local v5, "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v19, "clientpackagename"

    .line 2783
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2781
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 2784
    .local v18, "whitelistApp":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_d

    .line 2785
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_9

    .line 2786
    const-string/jumbo v19, "GenericSSOService"

    .line 2787
    const-string/jumbo v20, "In _addWhiteListPackage: the given whitelistpkg has already been registered"

    .line 2786
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2832
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v14    # "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    .end local v15    # "pack$iterator":Ljava/util/Iterator;
    .end local v16    # "solution":Lorg/w3c/dom/Node;
    .end local v18    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v9

    .line 2834
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackage: NullPointerException."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2839
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :goto_1
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_c

    .line 2840
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackage: Returning Fail."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_c
    const/16 v19, -0x1

    return v19

    .line 2790
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v14    # "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    .restart local v15    # "pack$iterator":Ljava/util/Iterator;
    .restart local v16    # "solution":Lorg/w3c/dom/Node;
    .restart local v18    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_d
    :try_start_1
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_e

    .line 2791
    const-string/jumbo v19, "GenericSSOService"

    .line 2792
    const-string/jumbo v20, "In _addWhiteListPackage: the package hasn\'t been whitelisted"

    .line 2791
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_e
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2794
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v19, "whitelistpackage"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 2796
    .local v4, "app":Lorg/w3c/dom/Element;
    const-string/jumbo v19, "clientpackagename"

    .line 2797
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2795
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 2800
    const-string/jumbo v19, "clientpackagesignature"

    .line 2801
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v20

    .line 2799
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    :cond_f
    :goto_2
    if-eqz v5, :cond_12

    .line 2808
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2809
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 2810
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v20, v0

    .line 2811
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2810
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2812
    .local v13, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v20, "value"

    .line 2813
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2812
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-interface {v4, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2815
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_10

    .line 2816
    const-string/jumbo v20, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In _addWhiteListPackage:  <"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2817
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2816
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2817
    const-string/jumbo v21, ":"

    .line 2816
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2817
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2816
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2818
    const-string/jumbo v21, "> parameter for - packageName "

    .line 2816
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2819
    invoke-virtual {v14}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 2816
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2820
    const-string/jumbo v21, " is added"

    .line 2816
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2835
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "node":Lorg/w3c/dom/Element;
    .end local v14    # "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    .end local v15    # "pack$iterator":Ljava/util/Iterator;
    .end local v16    # "solution":Lorg/w3c/dom/Node;
    .end local v18    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v8

    .line 2837
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackage: Exception."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2803
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v4    # "app":Lorg/w3c/dom/Element;
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    .restart local v15    # "pack$iterator":Ljava/util/Iterator;
    .restart local v16    # "solution":Lorg/w3c/dom/Node;
    .restart local v18    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_11
    :try_start_2
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_f

    .line 2804
    const-string/jumbo v19, "GenericSSOService"

    .line 2805
    const-string/jumbo v20, "In _addWhiteListPackage: the package signature hasn\'t been specified"

    .line 2804
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2824
    :cond_12
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    .line 2827
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "pack":Lcom/samsung/android/knox/sso/config/WhiteListPackage;
    .end local v18    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2828
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In _addWhiteListPackages: removing whitelistAll flag"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v17

    .line 2830
    .local v17, "status":Z
    const-string/jumbo v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In _addWhiteListPackages: return from remove whitelisting all apps = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2831
    const/16 v19, 0x0

    return v19
.end method

.method private _configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 35
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2550
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v22, v0

    .line 2551
    .local v22, "mdmUid":I
    const/4 v8, 0x0

    .line 2552
    .local v8, "configDataStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v32

    if-nez v32, :cond_1

    .line 2553
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_0

    .line 2554
    const-string/jumbo v32, "GenericSSOService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "In _configureSSOByFile: MDM uid is not matched = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_0
    const/16 v32, -0xa

    return v32

    .line 2557
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_4

    .line 2558
    :cond_2
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_3

    .line 2559
    const-string/jumbo v32, "GenericSSOService"

    .line 2560
    const-string/jumbo v33, "In _configureSSOByFile: config is null or is empty"

    .line 2559
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_3
    const/16 v32, -0x3

    return v32

    .line 2564
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v10

    .line 2565
    .local v10, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v10}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 2566
    .local v26, "solution":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 2567
    .local v11, "curAuthenPkgName":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 2568
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v32

    .line 2571
    const-string/jumbo v33, "servicepackagename"

    .line 2568
    invoke-interface/range {v32 .. v33}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 2576
    .end local v11    # "curAuthenPkgName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTempConfigFilePath(I)Ljava/lang/String;

    move-result-object v30

    .line 2577
    .local v30, "tmpFile":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2578
    .local v28, "tmpConfigDataDir":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 2579
    new-instance v32, Ljava/io/FileOutputStream;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2578
    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2580
    .local v9, "configDataStream":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2581
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 2583
    .local v13, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 2584
    .local v12, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 2585
    .local v14, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->normalize()V

    .line 2586
    new-instance v29, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-object/from16 v0, v29

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 2589
    .local v29, "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 2591
    .local v27, "solutionEle":Lorg/w3c/dom/Element;
    const-string/jumbo v32, "mdmuid"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2590
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string/jumbo v32, "servicepackagename"

    .line 2592
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2595
    .local v6, "authenticatorPkgName":Ljava/lang/String;
    const-string/jumbo v32, "servicepackagesignature"

    .line 2594
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2598
    .local v5, "authenticatorPkgCert":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2599
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_6

    .line 2600
    const-string/jumbo v32, "GenericSSOService"

    .line 2601
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "In _configureSSOByFile: tmp sso config doc is updated in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2600
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_6
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 2605
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_7

    .line 2606
    const-string/jumbo v32, "GenericSSOService"

    .line 2607
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "In _configureSSOByFile: updated sso config doc is saved at "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 2608
    const-string/jumbo v34, " for userId "

    .line 2607
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2606
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2612
    .local v20, "identity":J
    const-string/jumbo v32, "application_policy"

    .line 2611
    invoke-static/range {v32 .. v32}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2615
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_d

    .line 2616
    move/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_a

    .line 2618
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_8

    .line 2619
    const-string/jumbo v32, "GenericSSOService"

    .line 2620
    const-string/jumbo v33, "In _configureSSOByFile: Authenticator not installed"

    .line 2619
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 2622
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2623
    const/16 v32, -0xc

    .line 2699
    if-eqz v9, :cond_9

    .line 2700
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2623
    :cond_9
    :goto_0
    return v32

    .line 2702
    :catch_0
    move-exception v16

    .line 2703
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2625
    .end local v16    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_3
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2626
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2628
    .local v19, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 2629
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 2630
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 2631
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_b

    .line 2632
    const-string/jumbo v32, "GenericSSOService"

    .line 2633
    const-string/jumbo v33, "In _configureSSOByFile: Authenticator signature is not matched"

    .line 2632
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2634
    :cond_b
    const/16 v32, -0xd

    .line 2699
    if-eqz v9, :cond_c

    .line 2700
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2634
    :cond_c
    :goto_1
    return v32

    .line 2702
    :catch_1
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2639
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "installedAppPkgSig":Ljava/lang/String;
    :cond_d
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2642
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 2643
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 2654
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v18

    .line 2655
    .local v18, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2656
    .local v7, "configDataDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_f

    .line 2657
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2659
    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v25

    .line 2660
    .local v25, "renameSucceed":Z
    if-nez v25, :cond_15

    .line 2661
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_10

    .line 2662
    const-string/jumbo v32, "GenericSSOService"

    .line 2663
    const-string/jumbo v33, "In _configureSSOByFile: tempConfigFile failed to be saved to ssoconfig.xml"

    .line 2662
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2664
    :cond_10
    const/16 v32, -0x1

    .line 2699
    if-eqz v9, :cond_11

    .line 2700
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2664
    :cond_11
    :goto_2
    return v32

    .line 2644
    .end local v7    # "configDataDir":Ljava/io/File;
    .end local v18    # "filePath":Ljava/lang/String;
    .end local v25    # "renameSucceed":Z
    :cond_12
    :try_start_7
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_13

    .line 2645
    const-string/jumbo v32, "GenericSSOService"

    .line 2646
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "In _configureSSOByFile: there\'s already one sso vendor enrolled for userId "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 2648
    const-string/jumbo v34, ", please unenroll the existing one first"

    .line 2646
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2645
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2650
    const/16 v32, -0x9

    .line 2699
    if-eqz v9, :cond_14

    .line 2700
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 2650
    :cond_14
    :goto_3
    return v32

    .line 2702
    :catch_2
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2702
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v7    # "configDataDir":Ljava/io/File;
    .restart local v18    # "filePath":Ljava/lang/String;
    .restart local v25    # "renameSucceed":Z
    :catch_3
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2666
    .end local v16    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_9
    sget-object v32, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2667
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 2668
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v31

    .line 2669
    .local v31, "vendorBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v24

    .line 2671
    .local v24, "protocolConfiged":I
    if-eqz v24, :cond_18

    .line 2672
    sget-boolean v32, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v32, :cond_16

    .line 2673
    const-string/jumbo v32, "GenericSSOService"

    .line 2674
    const-string/jumbo v33, "In configureSSOByFile: failed because of pushAuthenticatorConfig()"

    .line 2673
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2675
    :cond_16
    const/16 v32, -0x10

    .line 2699
    if-eqz v9, :cond_17

    .line 2700
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 2675
    :cond_17
    :goto_4
    return v32

    .line 2702
    :catch_4
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2678
    .end local v16    # "e":Ljava/io/IOException;
    :cond_18
    const/16 v32, 0x64

    move/from16 v0, p3

    move/from16 v1, v32

    if-lt v0, v1, :cond_19

    .line 2679
    :try_start_b
    sget-object v32, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v32

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 2680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x7

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 2681
    .local v23, "message":Landroid/os/Message;
    move/from16 v0, p3

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2682
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2683
    move-object/from16 v0, v23

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2699
    .end local v23    # "message":Landroid/os/Message;
    :cond_19
    if-eqz v9, :cond_1a

    .line 2700
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 2706
    :cond_1a
    :goto_5
    const/16 v32, 0x0

    return v32

    .line 2702
    :catch_5
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2694
    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v5    # "authenticatorPkgCert":Ljava/lang/String;
    .end local v6    # "authenticatorPkgName":Ljava/lang/String;
    .end local v7    # "configDataDir":Ljava/io/File;
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .end local v10    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v12    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "filePath":Ljava/lang/String;
    .end local v20    # "identity":J
    .end local v24    # "protocolConfiged":I
    .end local v25    # "renameSucceed":Z
    .end local v26    # "solution":Lorg/w3c/dom/Node;
    .end local v27    # "solutionEle":Lorg/w3c/dom/Element;
    .end local v28    # "tmpConfigDataDir":Ljava/io/File;
    .end local v29    # "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v30    # "tmpFile":Ljava/lang/String;
    .end local v31    # "vendorBundle":Landroid/os/Bundle;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v17

    .line 2695
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .local v17, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_d
    const-string/jumbo v32, "GenericSSOService"

    const-string/jumbo v33, "In configureSSOByFile: Exception"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2696
    const/16 v32, -0x1

    .line 2699
    if-eqz v8, :cond_1b

    .line 2700
    :try_start_e
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 2696
    :cond_1b
    :goto_7
    return v32

    .line 2702
    :catch_7
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2691
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v16

    .line 2692
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v16    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_f
    const-string/jumbo v32, "GenericSSOService"

    const-string/jumbo v33, "In configureSSOByFile: IO exception in configureSSOByFile"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2693
    const/16 v32, -0x1

    .line 2699
    if-eqz v8, :cond_1c

    .line 2700
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 2693
    :cond_1c
    :goto_9
    return v32

    .line 2702
    :catch_9
    move-exception v16

    .line 2703
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2687
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v15

    .line 2689
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .local v15, "e":Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_11
    const-string/jumbo v32, "GenericSSOService"

    const-string/jumbo v33, "In _configureSSOByFile: File not found exception in configureSSOByFile"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2690
    const/16 v32, -0x5

    .line 2699
    if-eqz v8, :cond_1d

    .line 2700
    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 2690
    :cond_1d
    :goto_b
    return v32

    .line 2702
    :catch_b
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2697
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    .line 2699
    :goto_c
    if-eqz v8, :cond_1e

    .line 2700
    :try_start_13
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 2697
    :cond_1e
    :goto_d
    throw v32

    .line 2702
    :catch_c
    move-exception v16

    .line 2703
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 2697
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v10    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v26    # "solution":Lorg/w3c/dom/Node;
    .restart local v28    # "tmpConfigDataDir":Ljava/io/File;
    .restart local v30    # "tmpFile":Ljava/lang/String;
    :catchall_1
    move-exception v32

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .local v8, "configDataStream":Ljava/io/OutputStream;
    goto :goto_c

    .line 2687
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_d
    move-exception v15

    .restart local v15    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_a

    .line 2691
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_e
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 2694
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_f
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_6
.end method

.method private _enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I
    .locals 31
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .param p6, "pushRemote"    # Z

    .prologue
    .line 2179
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    .line 2180
    .local v20, "mdmUid":I
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_0

    const-string/jumbo v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "In _enrollSSOVendor mdmUid = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_0
    const/16 v17, 0x0

    .line 2182
    .local v17, "isRegistered":Z
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_1

    const-string/jumbo v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "In _enrollSSOVendor userid = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2184
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 2185
    .local v12, "enrolledVendor":Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v11

    .line 2186
    .local v11, "enrolledSSOPackageName":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 2187
    if-eqz v11, :cond_2

    .line 2188
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 2194
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 2195
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_3

    .line 2196
    const-string/jumbo v28, "GenericSSOService"

    const-string/jumbo v29, "In _enrollSSOVendor: authenticator is null or empty"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_3
    const/16 v28, -0x3

    return v28

    .line 2189
    :cond_4
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_5

    .line 2190
    const-string/jumbo v28, "GenericSSOService"

    .line 2191
    const-string/jumbo v29, "In _enrollSSOVendor: there\'s already one sso vendor enrolled"

    .line 2190
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_5
    const/16 v28, -0x9

    return v28

    .line 2199
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2201
    .local v14, "identity":J
    const-string/jumbo v28, "application_policy"

    .line 2200
    invoke-static/range {v28 .. v28}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2202
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_a

    .line 2203
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_8

    .line 2205
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_7

    .line 2206
    const-string/jumbo v28, "GenericSSOService"

    const-string/jumbo v29, "In _enrollSSOVendor: Authenticator not installed"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2208
    const/16 v28, -0xc

    return v28

    .line 2210
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2212
    .local v16, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 2213
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 2214
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_9

    .line 2215
    const-string/jumbo v28, "GenericSSOService"

    .line 2216
    const-string/jumbo v29, "In _enrollSSOVendor: Authenticator signature is not matched"

    .line 2215
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :cond_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2218
    const/16 v28, -0xd

    return v28

    .line 2223
    .end local v16    # "installedAppPkgSig":Ljava/lang/String;
    :cond_a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    :try_start_0
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2228
    .local v7, "doc":Lorg/w3c/dom/Document;
    const/16 v22, 0x0

    .line 2229
    .local v22, "newSolution":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .line 2230
    if-eqz v12, :cond_e

    .line 2231
    if-eqz v11, :cond_e

    .line 2232
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 2230
    if-eqz v28, :cond_e

    .line 2234
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v28

    if-nez v28, :cond_c

    .line 2235
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_b

    .line 2236
    const-string/jumbo v28, "GenericSSOService"

    .line 2237
    const-string/jumbo v29, "In _enrollSSOVendor: MDM uid is not matched"

    .line 2236
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_b
    const/16 v28, -0xa

    return v28

    .line 2240
    :cond_c
    const/16 v17, 0x1

    .line 2241
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 2242
    .local v5, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_10

    .line 2243
    invoke-interface {v5, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 2244
    .local v24, "node":Lorg/w3c/dom/Node;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "whitelistpackage"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 2245
    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2242
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2249
    .end local v5    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v24    # "node":Lorg/w3c/dom/Node;
    :cond_e
    const-string/jumbo v28, "ssoprovider"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 2250
    .local v22, "newSolution":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 2252
    const-string/jumbo v28, "servicepackagesignature"

    .line 2251
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    :cond_f
    :goto_1
    const-string/jumbo v28, "servicepackagename"

    .line 2259
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    const-string/jumbo v28, "mdmuid"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2262
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    .end local v22    # "newSolution":Lorg/w3c/dom/Element;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v28

    if-nez v28, :cond_15

    .line 2267
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v28, v0

    .line 2268
    const-string/jumbo v29, "vendorconfigs"

    .line 2267
    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    .line 2269
    .local v27, "vendorconfigs":Lorg/w3c/dom/Element;
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "key$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2270
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 2271
    const/16 v23, 0x0

    .line 2272
    .local v23, "node":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v23

    .end local v23    # "node":Lorg/w3c/dom/Element;
    check-cast v23, Lorg/w3c/dom/Element;

    .local v23, "node":Lorg/w3c/dom/Element;
    if-nez v23, :cond_12

    .line 2273
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 2274
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2276
    :cond_12
    const-string/jumbo v28, "value"

    .line 2277
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2276
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_11

    .line 2279
    const-string/jumbo v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "In _enrollSSOVendor:  <"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2280
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2279
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2281
    const-string/jumbo v30, "> parameter for - packageName "

    .line 2279
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2282
    const-string/jumbo v30, " is added"

    .line 2279
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 2323
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    .end local v23    # "node":Lorg/w3c/dom/Element;
    .end local v27    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 2324
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "GenericSSOService"

    const-string/jumbo v29, "In _enrollSSOVendor: NullPointerException"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2330
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :goto_3
    const/16 v28, -0x1

    return v28

    .line 2255
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v22    # "newSolution":Lorg/w3c/dom/Element;
    :cond_13
    :try_start_1
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_f

    .line 2256
    const-string/jumbo v28, "GenericSSOService"

    .line 2257
    const-string/jumbo v29, "In _enrollSSOVendor: Authenticator signature is not specified"

    .line 2256
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 2325
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "newSolution":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v10

    .line 2326
    .local v10, "e":Lorg/w3c/dom/DOMException;
    const-string/jumbo v28, "GenericSSOService"

    const-string/jumbo v29, "In _enrollSSOVendor: DOMException"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2285
    .end local v10    # "e":Lorg/w3c/dom/DOMException;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "key$iterator":Ljava/util/Iterator;
    .restart local v27    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_14
    if-nez v17, :cond_18

    .line 2286
    :try_start_2
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2290
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    .end local v27    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_15
    :goto_4
    if-nez v17, :cond_16

    .line 2291
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2292
    :cond_16
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    .line 2293
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2295
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v26

    .line 2297
    .local v26, "vendorBundle":Landroid/os/Bundle;
    if-eqz p6, :cond_19

    .line 2298
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v25

    .line 2300
    .local v25, "protocolConfiged":I
    if-eqz v25, :cond_19

    .line 2301
    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_17

    .line 2302
    const-string/jumbo v28, "GenericSSOService"

    .line 2303
    const-string/jumbo v29, "In _enrollSSOVendor: failed because of pushAuthenticatorConfig()"

    .line 2302
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_17
    const/16 v28, -0x10

    return v28

    .line 2288
    .end local v25    # "protocolConfiged":I
    .end local v26    # "vendorBundle":Landroid/os/Bundle;
    .restart local v19    # "key$iterator":Ljava/util/Iterator;
    .restart local v27    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_18
    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 2327
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    .end local v27    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 2328
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v28, "GenericSSOService"

    const-string/jumbo v29, "In _enrollSSOVendor: Exception"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2309
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v26    # "vendorBundle":Landroid/os/Bundle;
    :cond_19
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2312
    const/16 v28, 0x64

    move/from16 v0, p5

    move/from16 v1, v28

    if-lt v0, v1, :cond_1a

    .line 2313
    sget-object v28, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v28

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 2314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 2315
    .local v21, "message":Landroid/os/Message;
    move/from16 v0, p5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2316
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2317
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2318
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2321
    .end local v21    # "message":Landroid/os/Message;
    :cond_1a
    const/16 v28, 0x0

    return v28
.end method

.method private addAppTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3893
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3894
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3895
    .local v7, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_1

    .line 3896
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3897
    const-string/jumbo v9, "GenericSSOService"

    .line 3898
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In addAppTokenToSecureStorageForUser: the token for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3899
    const-string/jumbo v11, " doesn\'t exist"

    .line 3898
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3897
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_0
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "apptoken"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 3901
    const-string/jumbo v9, "packagename"

    invoke-interface {v7, v9, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3905
    :cond_1
    const-string/jumbo v9, "protocoltype"

    .line 3906
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3904
    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 3909
    .local v6, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3910
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3911
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3912
    .local v8, "value":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3913
    const-string/jumbo v9, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3914
    const-string/jumbo v9, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3915
    const-string/jumbo v9, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3916
    const-string/jumbo v9, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3917
    invoke-direct {p0, v0, v7, v3, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3923
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3924
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In addAppTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v9, -0x1

    return v9

    .line 3921
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3922
    const/4 v9, 0x0

    return v9

    .line 3925
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v1

    .line 3926
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In addAppTokenToSecureStorageForUser: error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addTokenToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3600
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3601
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3602
    const-string/jumbo v3, "GenericSSOService"

    .line 3603
    const-string/jumbo v4, "In addTokenToGenericSSO: appPkgName is null or empty string"

    .line 3602
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3607
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3608
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3610
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3611
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3612
    const-string/jumbo v3, "GenericSSOService"

    .line 3613
    const-string/jumbo v4, "In addTokenToGenericSSO: authenticator is not permitted to call this API"

    .line 3612
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_1
    const/4 v3, -0x1

    return v3

    .line 3616
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3617
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3618
    const-string/jumbo v3, "GenericSSOService"

    .line 3619
    const-string/jumbo v4, "In addTokenToGenericSSO: appPkgName is authenticator packagename, we add share token"

    .line 3618
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_3
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3

    .line 3622
    :cond_4
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3623
    const-string/jumbo v3, "GenericSSOService"

    .line 3624
    const-string/jumbo v4, "In addTokenToGenericSSO: appPkgName is not application packagename, we add app token"

    .line 3623
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3
.end method

.method private addTokenToSecureStorage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3840
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 3842
    .local v0, "userId":I
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v1

    return v1
.end method

.method private addTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 15
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3937
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_2

    .line 3938
    :cond_0
    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 3939
    const-string/jumbo v12, "GenericSSOService"

    .line 3940
    const-string/jumbo v13, "In addTokenToSecureStorageForUser: token to save is null"

    .line 3939
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_1
    const/4 v12, -0x3

    return v12

    .line 3944
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 3945
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 3946
    .local v10, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v10, :cond_4

    .line 3947
    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 3948
    const-string/jumbo v12, "GenericSSOService"

    .line 3949
    const-string/jumbo v13, "In addTokenToSecureStorageForUser: the usercert doesn\'t exist"

    .line 3948
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    :cond_3
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3951
    const-string/jumbo v13, "usercertificate"

    .line 3950
    invoke-interface {v12, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 3952
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3954
    :cond_4
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 3955
    .local v2, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v2, :cond_6

    .line 3956
    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_5

    .line 3957
    const-string/jumbo v12, "GenericSSOService"

    .line 3958
    const-string/jumbo v13, "In addTokenToSecureStorageForUser: the deviceCert doesn\'t exist"

    .line 3957
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    :cond_5
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3960
    const-string/jumbo v13, "devicecertificate"

    .line 3959
    invoke-interface {v12, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 3961
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3963
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 3964
    .local v9, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v9, :cond_8

    .line 3965
    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_7

    .line 3966
    const-string/jumbo v12, "GenericSSOService"

    .line 3967
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "In addTokenToSecureStorageForUser: the token for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3968
    const-string/jumbo v14, " doesn\'t exist"

    .line 3967
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3966
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_7
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v13, "apptoken"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 3970
    const-string/jumbo v12, "packagename"

    move-object/from16 v0, p2

    invoke-interface {v9, v12, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    iget-object v12, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3974
    :cond_8
    const-string/jumbo v12, "protocoltype"

    .line 3975
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3973
    invoke-interface {v9, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 3978
    .local v8, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 3980
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3981
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3982
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 3983
    const-string/jumbo v12, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 3984
    const-string/jumbo v12, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 3983
    if-eqz v12, :cond_b

    .line 3985
    :cond_a
    invoke-direct {p0, v1, v10, v5, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3996
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "tokenBundle":Landroid/os/Bundle;
    .end local v9    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v10    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3997
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v13, "In addTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4001
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v12, -0x1

    return v12

    .line 3986
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v2    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "tokenBundle":Landroid/os/Bundle;
    .restart local v9    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v10    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string/jumbo v12, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 3987
    const-string/jumbo v12, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 3986
    if-eqz v12, :cond_d

    .line 3988
    :cond_c
    invoke-direct {p0, v1, v2, v5, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3998
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "tokenBundle":Landroid/os/Bundle;
    .end local v9    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v10    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v11    # "value":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 3999
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v13, "In addTokenToSecureStorageForUser: Exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3990
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v2    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "tokenBundle":Landroid/os/Bundle;
    .restart local v9    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v10    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_d
    :try_start_2
    invoke-direct {p0, v1, v9, v5, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3994
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_e
    move/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3995
    const/4 v12, 0x0

    return v12
.end method

.method private addUserAndDeviceCertificatesForUser(ILcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 13
    .param p1, "userId"    # I
    .param p2, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3847
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3848
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 3849
    .local v8, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v8, :cond_1

    .line 3850
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 3851
    const-string/jumbo v10, "GenericSSOService"

    .line 3852
    const-string/jumbo v11, "In addUserAndDeviceCertificates: the usercert doesn\'t exist"

    .line 3851
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    :cond_0
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3854
    const-string/jumbo v11, "usercertificate"

    .line 3853
    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 3855
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3857
    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3858
    .local v1, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v1, :cond_3

    .line 3859
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 3860
    const-string/jumbo v10, "GenericSSOService"

    .line 3861
    const-string/jumbo v11, "In addUserAndDeviceCertificates: the deviceCert doesn\'t exist"

    .line 3860
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    :cond_2
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3863
    const-string/jumbo v11, "devicecertificate"

    .line 3862
    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3864
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3866
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 3867
    .local v7, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 3868
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3869
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3870
    .local v9, "value":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3871
    const-string/jumbo v10, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3872
    const-string/jumbo v10, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 3871
    if-eqz v10, :cond_6

    .line 3873
    :cond_5
    invoke-direct {p0, v0, v8, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3882
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "tokenBundle":Landroid/os/Bundle;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3883
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In addUserAndDeviceCertificates: NullPointerException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3887
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v10, -0x1

    return v10

    .line 3874
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "key$iterator":Ljava/util/Iterator;
    .restart local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "tokenBundle":Landroid/os/Bundle;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v10, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3875
    const-string/jumbo v10, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 3874
    if-eqz v10, :cond_4

    .line 3876
    :cond_7
    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3884
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "tokenBundle":Landroid/os/Bundle;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3885
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In addUserAndDeviceCertificates: error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3880
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v5    # "key$iterator":Ljava/util/Iterator;
    .restart local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "tokenBundle":Landroid/os/Bundle;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    :cond_8
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3881
    const/4 v10, 0x0

    return v10
.end method

.method private bindToService(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1147
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;-><init>(I)V

    .line 1148
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1149
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1150
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In bindToService: The SSO Service is already bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_0
    return-void

    .line 1154
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v4

    .line 1155
    :try_start_0
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v5, "In bindToService: Binding to the service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 1157
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x1

    .line 1156
    invoke-virtual {v3, p2, v0, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1159
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1160
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1161
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4e20

    .line 1160
    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1162
    .local v1, "countDownTimeout":Z
    if-nez v1, :cond_2

    .line 1163
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1164
    const-string/jumbo v3, "GenericSSOService"

    .line 1165
    const-string/jumbo v5, "In bindToService: CoutnDownLatch return false"

    .line 1164
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "countDownTimeout":Z
    :cond_2
    :goto_0
    monitor-exit v4

    .line 1146
    return-void

    .line 1167
    :catch_0
    move-exception v2

    .line 1168
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v5, "In bindToService: InterruptedException"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1154
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1171
    :cond_3
    :try_start_3
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v5, "In bindToService: Fail to bind to sso service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1172
    return-void
.end method

.method private callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "configData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1047
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1048
    const-string/jumbo v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In callingAppIsPermitted: packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1049
    const-string/jumbo v6, " pid = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1051
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    .line 1050
    invoke-static {v4, v5, v3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 1052
    .local v1, "whiteListstatus":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1053
    return v2

    .end local v1    # "whiteListstatus":Z
    :cond_1
    move v1, v3

    .line 1050
    goto :goto_0

    .line 1054
    .restart local v1    # "whiteListstatus":Z
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1055
    :cond_3
    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In callingAppIsPermitted: Bundle configData is null or empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1056
    const-string/jumbo v5, " is not whitelisted"

    .line 1055
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return v3

    .line 1060
    :cond_4
    const-string/jumbo v4, "clientpackagesignature"

    .line 1059
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1061
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "packageCert":Ljava/lang/String;
    const-string/jumbo v4, "clientpackagesignature"

    .line 1063
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1065
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1066
    const-string/jumbo v2, "GenericSSOService"

    .line 1067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In callingAppIsPermitted: Fail to pass the callingApp cert check: (ondevice vs config) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1069
    const-string/jumbo v5, " vs "

    .line 1067
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1071
    const-string/jumbo v5, "clientpackagesignature"

    .line 1070
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1067
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1066
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_5
    return v3

    .line 1075
    .end local v0    # "packageCert":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method private cleanUpSSOConnections(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2009
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2011
    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2012
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2013
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In cleanUpSSOConnections: SSO service is unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In cleanUpSSOConnections: SSO connection is remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_1
    return-void
.end method

.method private clearConfigAndTokenForAuthenticator(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 3112
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v4

    .line 3113
    .local v4, "ret":I
    if-eqz v4, :cond_1

    .line 3114
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3115
    const-string/jumbo v5, "GenericSSOService"

    .line 3116
    const-string/jumbo v6, "In clearConfigAndTokenForAuthenticator: Fail to clear records remotely"

    .line 3115
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_0
    const/16 v5, -0x10

    return v5

    .line 3121
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3123
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3124
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3127
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3129
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3130
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3131
    return v4

    .line 3135
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "ret":I
    :catch_0
    move-exception v0

    .line 3136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "clearConfigAndTokenForAuthenticator: Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v5, -0x1

    return v5

    .line 3132
    :catch_1
    move-exception v1

    .line 3133
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "GenericSSOService"

    .line 3134
    const-string/jumbo v6, "clearConfigAndTokenForAuthenticator: SecurityException"

    .line 3133
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearUserCertAndAppToken(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3143
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 3145
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3146
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    .line 3147
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 3148
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3149
    .local v3, "packageName":Ljava/lang/String;
    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3150
    const-string/jumbo v8, "GenericSSOService"

    .line 3151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "In clearUserCertAndAppToken: Processing packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3150
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_0
    invoke-direct {p0, v7, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3163
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageName$iterator":Ljava/util/Iterator;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 3164
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In clearUserCertAndAppToken: NullPointerException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3168
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v8, -0x1

    return v8

    .line 3157
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "userId":I
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 3158
    .local v6, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v6, :cond_2

    .line 3159
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3161
    :cond_2
    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3162
    const/4 v8, 0x0

    return v8

    .line 3165
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "userCertNode":Lorg/w3c/dom/Node;
    .end local v7    # "userId":I
    :catch_1
    move-exception v1

    .line 3166
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In clearUserCertAndAppToken: Exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private configureSSOByFile2(Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2531
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2532
    if-nez p1, :cond_1

    .line 2533
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2534
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In configureSSOByFile2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_0
    const/4 v2, -0x3

    return v2

    .line 2537
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v0

    .line 2538
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2539
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In configureSSOByFile2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2541
    .local v1, "status":Z
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In configureSSOByFile2: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    .end local v1    # "status":Z
    :goto_0
    return v0

    .line 2544
    :cond_2
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In configureSSOByFile2: Failed to configure file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 1318
    const-string/jumbo v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 1319
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 1320
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1321
    .local v0, "key":Ljavax/crypto/SecretKey;
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1322
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_0
    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1309
    .local v0, "_token":J
    :try_start_0
    const-string/jumbo v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1309
    return-object v2

    .line 1310
    :catchall_0
    move-exception v2

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1310
    throw v2
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "ciphertext"    # Ljava/lang/String;

    .prologue
    .line 1536
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1537
    :cond_0
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_1

    .line 1538
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: Key alias or token to encrypt is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_1
    const/16 v19, 0x0

    return-object v19

    .line 1542
    :cond_2
    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1543
    .local v4, "data":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1544
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1546
    sget-object v19, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    move-object/from16 v0, v19

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 1547
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_3

    .line 1548
    const-string/jumbo v19, "GenericSSOService"

    .line 1549
    const-string/jumbo v20, "In decrypt: the retrieved key in keystore is not SecretKey"

    .line 1548
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_3
    const/16 v19, 0x0

    return-object v19

    .line 1553
    :cond_4
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1554
    .local v3, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_5

    .line 1555
    const-string/jumbo v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: Provider is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_5
    if-eqz v3, :cond_8

    .line 1557
    array-length v0, v4

    move/from16 v19, v0

    add-int/lit8 v17, v19, -0x10

    .line 1558
    .local v17, "ivIndex":I
    sget-object v19, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v19, Ljavax/crypto/SecretKey;

    .line 1559
    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v21, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 1558
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1560
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v18

    .line 1561
    .local v18, "out":[B
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v19, "UTF_8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1562
    .local v5, "decrypted":Ljava/lang/String;
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_6

    .line 1563
    const-string/jumbo v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: Decrypted output is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_6
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_7

    .line 1565
    const-string/jumbo v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: the length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_7
    return-object v5

    .line 1568
    .end local v5    # "decrypted":Ljava/lang/String;
    .end local v17    # "ivIndex":I
    .end local v18    # "out":[B
    :cond_8
    sget-boolean v19, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_9

    .line 1569
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: cipher is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "data":[B
    :cond_9
    :goto_0
    const/16 v19, 0x0

    return-object v19

    .line 1591
    :catch_0
    move-exception v7

    .line 1592
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: Exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1589
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1590
    .local v8, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: GeneralSecurityException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1587
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v9

    .line 1588
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: InvalidAlgorithmParameterException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1585
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v6

    .line 1586
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: IOException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1583
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .line 1584
    .local v13, "e":Ljava/security/UnrecoverableKeyException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: UnrecoverableKeyException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1581
    .end local v13    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_5
    move-exception v14

    .line 1582
    .local v14, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: BadPaddingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1579
    .end local v14    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v15

    .line 1580
    .local v15, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: IllegalBlockSizeException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v15    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_7
    move-exception v16

    .line 1578
    .local v16, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In encrypt: NoSuchPaddingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1575
    .end local v16    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_8
    move-exception v10

    .line 1576
    .local v10, "e":Ljava/security/InvalidKeyException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: InvalidKeyException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1573
    .end local v10    # "e":Ljava/security/InvalidKeyException;
    :catch_9
    move-exception v11

    .line 1574
    .local v11, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: KeyStoreException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1571
    .end local v11    # "e":Ljava/security/KeyStoreException;
    :catch_a
    move-exception v12

    .line 1572
    .local v12, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v19, "GenericSSOService"

    const-string/jumbo v20, "In decrypt: NoSuchAlgorithmException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private deleteAppTokenForUser(ILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3378
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3379
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3380
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In deleteAppTokenForUser: packageName is null or empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_0
    const/4 v4, -0x3

    return v4

    .line 3384
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3385
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3386
    .local v3, "tokenNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_3

    .line 3387
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 3388
    const-string/jumbo v4, "GenericSSOService"

    .line 3389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3390
    const-string/jumbo v6, " doesn\'t exist"

    .line 3389
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3388
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3399
    const/4 v4, 0x0

    return v4

    .line 3392
    :cond_3
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3393
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 3394
    const-string/jumbo v4, "GenericSSOService"

    .line 3395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3396
    const-string/jumbo v6, " is removed"

    .line 3395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3394
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3400
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v3    # "tokenNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 3401
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In deleteAppTokenForUser: NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3405
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v4, -0x1

    return v4

    .line 3402
    :catch_1
    move-exception v1

    .line 3403
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In deleteAppTokenForUser: Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private deleteUserAndDeviceCertForUser(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 3410
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3411
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3412
    .local v4, "userCertNode":Lorg/w3c/dom/Node;
    if-nez v4, :cond_2

    .line 3413
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3414
    const-string/jumbo v5, "GenericSSOService"

    .line 3415
    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: userCertNode is null"

    .line 3414
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3423
    .local v1, "deviceCertNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_3

    .line 3424
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 3425
    const-string/jumbo v5, "GenericSSOService"

    .line 3426
    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: deviceCertNode is null"

    .line 3425
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3434
    const/4 v5, 0x0

    return v5

    .line 3417
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v5, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3418
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3419
    const-string/jumbo v5, "GenericSSOService"

    .line 3420
    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: userCertNode is removed"

    .line 3419
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3435
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v4    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v3

    .line 3436
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: NullPointerException"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3440
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v5, -0x1

    return v5

    .line 3428
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .restart local v4    # "userCertNode":Lorg/w3c/dom/Node;
    :cond_3
    :try_start_1
    iget-object v5, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3429
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 3430
    const-string/jumbo v5, "GenericSSOService"

    .line 3431
    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: deviceCertNode is removed"

    .line 3430
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3437
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .end local v4    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 3438
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "In deleteUserAndDeviceCertForUser: Exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1297
    .local v0, "_token":J
    :try_start_0
    const-string/jumbo v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    return-object v2

    .line 1298
    :catchall_0
    move-exception v2

    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    throw v2
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 1458
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1459
    :cond_0
    sget-boolean v24, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_1

    .line 1460
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: Key alias or token to encrypt is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_1
    const/16 v24, 0x0

    return-object v24

    .line 1465
    :cond_2
    :try_start_0
    const-string/jumbo v24, "UTF_8"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1466
    .local v7, "data":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1467
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1469
    sget-object v24, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 1470
    sget-boolean v24, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_3

    .line 1471
    const-string/jumbo v24, "GenericSSOService"

    .line 1472
    const-string/jumbo v25, "In encrypt: the retrieved key in keystore is not SecretKey"

    .line 1471
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_3
    const/16 v24, 0x0

    return-object v24

    .line 1477
    :cond_4
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1478
    .local v20, "iv":[B
    new-instance v22, Ljava/security/SecureRandom;

    invoke-direct/range {v22 .. v22}, Ljava/security/SecureRandom;-><init>()V

    .line 1479
    .local v22, "mRandom":Ljava/security/SecureRandom;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1480
    new-instance v21, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1482
    .local v21, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string/jumbo v24, "AES/CBC/PKCS5Padding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1483
    .local v5, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v24, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_5

    .line 1484
    const-string/jumbo v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "In encrypt: Provider is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_5
    if-eqz v5, :cond_8

    .line 1486
    sget-object v24, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v24, Ljavax/crypto/SecretKey;

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1487
    invoke-virtual {v5, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v23

    .line 1489
    .local v23, "out":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v4, v0, [B

    .line 1490
    .local v4, "EncryptedDataAndIV":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1491
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    .line 1492
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    .line 1491
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1494
    new-instance v6, Ljava/lang/String;

    .line 1495
    const/16 v24, 0x2

    .line 1494
    move/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v24

    .line 1495
    const-string/jumbo v25, "UTF_8"

    .line 1494
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1496
    .local v6, "ciphertext":Ljava/lang/String;
    sget-boolean v24, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 1497
    const-string/jumbo v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "In encrypt: Encrypted output "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_6
    sget-boolean v24, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_7

    .line 1499
    const-string/jumbo v24, "GenericSSOService"

    .line 1500
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "In encrypt: the length = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1499
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :cond_7
    return-object v6

    .line 1525
    .end local v4    # "EncryptedDataAndIV":[B
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "ciphertext":Ljava/lang/String;
    .end local v7    # "data":[B
    .end local v20    # "iv":[B
    .end local v21    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v22    # "mRandom":Ljava/security/SecureRandom;
    .end local v23    # "out":[B
    :catch_0
    move-exception v9

    .line 1526
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_0
    const/16 v24, 0x0

    return-object v24

    .line 1523
    :catch_1
    move-exception v8

    .line 1524
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1521
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v16

    .line 1522
    .local v16, "e":Ljava/security/UnrecoverableKeyException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: UnrecoverableKeyException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1519
    .end local v16    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3
    move-exception v12

    .line 1520
    .local v12, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: KeyStoreException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1517
    .end local v12    # "e":Ljava/security/KeyStoreException;
    :catch_4
    move-exception v15

    .line 1518
    .local v15, "e":Ljava/security/ProviderException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: ProviderException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1515
    .end local v15    # "e":Ljava/security/ProviderException;
    :catch_5
    move-exception v17

    .line 1516
    .local v17, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: BadPaddingException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1513
    .end local v17    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v18

    .line 1514
    .local v18, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: IllegalBlockSizeException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1511
    .end local v18    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_7
    move-exception v19

    .line 1512
    .local v19, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: NoSuchPaddingException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1509
    .end local v19    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_8
    move-exception v13

    .line 1510
    .local v13, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: NoSuchAlgorithmException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1507
    .end local v13    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_9
    move-exception v14

    .line 1508
    .local v14, "e":Ljava/security/NoSuchProviderException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: NoSuchProviderException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1505
    .end local v14    # "e":Ljava/security/NoSuchProviderException;
    :catch_a
    move-exception v11

    .line 1506
    .local v11, "e":Ljava/security/InvalidKeyException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: InvalidKeyException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1503
    .end local v11    # "e":Ljava/security/InvalidKeyException;
    :catch_b
    move-exception v10

    .line 1504
    .local v10, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string/jumbo v24, "GenericSSOService"

    const-string/jumbo v25, "In encrypt: InvalidAlgorithmParameterException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.enterprise.mdm.permission.MDM_SSO"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SSO"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 559
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 2153
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2154
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor2: context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2156
    if-nez p1, :cond_2

    .line 2157
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2158
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In enrollSSOVendor2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_1
    const/4 v0, -0x3

    return v0

    .line 2161
    :cond_2
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2162
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor2: context infor after enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_3
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v7

    .line 2164
    .local v7, "ret":I
    if-nez v7, :cond_4

    .line 2165
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In enrollSSOVendor2: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-direct {p0, v9, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v8

    .line 2167
    .local v8, "status":Z
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor2: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    .end local v8    # "status":Z
    :goto_0
    return v7

    .line 2170
    :cond_4
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor2: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2071
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2072
    :cond_0
    return-object v8

    .line 2074
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2075
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 2077
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 2078
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2079
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2078
    if-eqz v6, :cond_2

    .line 2080
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2076
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2083
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 2084
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 2086
    :cond_4
    return-object v8

    .line 2089
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 2090
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In ExistedNode: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2092
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 2087
    :catch_1
    move-exception v2

    .line 2088
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In ExistedNode: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p2, "tokenNode"    # Lorg/w3c/dom/Element;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 3173
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 3174
    :cond_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3175
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In fillChildNodes: parameters are not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_1
    return-void

    .line 3173
    :cond_2
    if-eqz p4, :cond_0

    .line 3179
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3180
    .local v2, "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .line 3181
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 3182
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3183
    :cond_3
    iget-object v3, p1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3184
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3188
    :goto_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 3189
    const-string/jumbo v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the original value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3192
    if-nez p4, :cond_7

    .line 3193
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3194
    const-string/jumbo v3, "GenericSSOService"

    .line 3195
    const-string/jumbo v4, "In fillChildNodes: encrypted token value is null, failed to fillChildNodes"

    .line 3194
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_5
    return-void

    .line 3186
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    check-cast v1, Lorg/w3c/dom/Element;

    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 3198
    :cond_7
    const-string/jumbo v3, "value"

    invoke-interface {v1, v3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .end local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_8
    :goto_1
    return-void

    .line 3201
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    .restart local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_9
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3202
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3205
    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .end local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v0

    .line 3206
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GenericSSOService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v4, 0x0

    .line 1269
    if-nez p1, :cond_0

    .line 1270
    return-object v4

    .line 1271
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 1272
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1273
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1272
    if-eqz v2, :cond_1

    .line 1275
    return-object v0

    .line 1277
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-object v4
.end method

.method private getAccessTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    const/4 v4, 0x0

    .line 1860
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1861
    :cond_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1862
    const-string/jumbo v2, "GenericSSOService"

    .line 1863
    const-string/jumbo v3, "In getAccessTokenByProtocolType: token is not valid"

    .line 1862
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_1
    return-object v4

    .line 1866
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1867
    .local v0, "protocolType":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1868
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    .line 1879
    return-object v4

    .line 1871
    :pswitch_0
    const-string/jumbo v2, "SAML_RESPONSE_ASSERTION"

    .line 1870
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1874
    :pswitch_1
    const-string/jumbo v2, "OAUTH_RESPONSE_ACCESS_TOKEN"

    .line 1873
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1877
    :pswitch_2
    const-string/jumbo v2, "SAML_RESPONSE_ASSERTION"

    .line 1876
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1868
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 3334
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3335
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3336
    const-string/jumbo v9, "GenericSSOService"

    .line 3337
    const-string/jumbo v10, "In getAppTokenFromSecureStorageForUser: appPkgName is null or empty"

    .line 3336
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_0
    return-object v12

    .line 3341
    :cond_1
    :try_start_0
    new-instance v7, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v7}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    .line 3342
    .local v7, "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v4

    .line 3343
    .local v4, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v4, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 3344
    .local v8, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v8, :cond_3

    .line 3345
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 3346
    const-string/jumbo v9, "GenericSSOService"

    .line 3347
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In getAppTokenFromSecureStorageForUser: the token for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3348
    const-string/jumbo v11, " doesn\'t exist"

    .line 3347
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3346
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_2
    return-object v12

    .line 3352
    :cond_3
    const-string/jumbo v9, "protocoltype"

    .line 3351
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setProtocolType(I)V

    .line 3354
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3355
    .local v3, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3356
    .local v0, "cachedTokenItems":Landroid/os/Bundle;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childNode$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3357
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 3359
    const-string/jumbo v9, "value"

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 3361
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 3363
    const-string/jumbo v10, "value"

    .line 3362
    invoke-direct {p0, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3360
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3369
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNode$iterator":Ljava/util/Iterator;
    .end local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v7    # "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .end local v8    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v6

    .line 3370
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3374
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-object v12

    .line 3366
    .restart local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .restart local v2    # "childNode$iterator":Ljava/util/Iterator;
    .restart local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v7    # "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .restart local v8    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_5
    :try_start_1
    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3367
    return-object v7

    .line 3371
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v2    # "childNode$iterator":Ljava/util/Iterator;
    .end local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v7    # "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .end local v8    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v5

    .line 3372
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "attirbuteName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1285
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1287
    :cond_0
    return-object v1

    .line 1286
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    return-object v8

    .line 1241
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1242
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 1245
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1246
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1247
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1250
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-object v5

    .line 1253
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1254
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 1251
    :catch_1
    move-exception v2

    .line 1252
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1209
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1210
    :cond_0
    return-object v8

    .line 1213
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1214
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1216
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1217
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1218
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1217
    if-eqz v6, :cond_2

    .line 1219
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1222
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_3
    return-object v5

    .line 1225
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 1223
    :catch_1
    move-exception v2

    .line 1224
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getConfigData(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v5

    .line 681
    .local v5, "vendorBundle":Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 683
    .local v4, "packageBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v3, "newBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 685
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 686
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 687
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 689
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 693
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 694
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 695
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 696
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 699
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v3
.end method

.method private getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 757
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 758
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 759
    .local v10, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v10, :cond_0

    .line 760
    const/4 v11, 0x0

    return-object v11

    .line 762
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 763
    .local v2, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v2, :cond_1

    .line 764
    const/4 v11, 0x0

    return-object v11

    .line 766
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v9, "ret":Landroid/os/Bundle;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "allowedApp$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 768
    .local v0, "allowedApp":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 770
    const-string/jumbo v11, "clientpackagename"

    .line 769
    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 768
    if-eqz v11, :cond_2

    .line 774
    const-string/jumbo v11, "clientpackagename"

    invoke-virtual {v9, v11, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string/jumbo v11, "clientpackagesignature"

    .line 776
    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 779
    const-string/jumbo v11, "clientpackagesignature"

    .line 782
    const-string/jumbo v12, "clientpackagesignature"

    .line 780
    invoke-direct {p0, v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 778
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v5

    .line 787
    .local v5, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "childNode$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 788
    .local v3, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 790
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 791
    const-string/jumbo v12, "value"

    invoke-direct {p0, v3, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 790
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 799
    .end local v0    # "allowedApp":Lorg/w3c/dom/Node;
    .end local v1    # "allowedApp$iterator":Ljava/util/Iterator;
    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "childNode":Lorg/w3c/dom/Node;
    .end local v4    # "childNode$iterator":Ljava/util/Iterator;
    .end local v5    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ret":Landroid/os/Bundle;
    .end local v10    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v8

    .line 800
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getConfigDataForPkgName: NullPointerException"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v11, 0x0

    return-object v11

    .line 798
    .restart local v1    # "allowedApp$iterator":Ljava/util/Iterator;
    .restart local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v9    # "ret":Landroid/os/Bundle;
    .restart local v10    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_5
    return-object v9

    .line 801
    .end local v1    # "allowedApp$iterator":Ljava/util/Iterator;
    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ret":Landroid/os/Bundle;
    .end local v10    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v7

    .line 802
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getConfigDataForPkgName: Exception"

    invoke-static {v11, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getConfigDataForSSOVendor(I)Landroid/os/Bundle;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 709
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 710
    const-string/jumbo v10, "GenericSSOService"

    .line 711
    const-string/jumbo v11, "In getConfigDataForSSOVendor: start getConfigDataForSSOVendor"

    .line 710
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    const/4 v7, 0x0

    .line 714
    .local v7, "ret":Landroid/os/Bundle;
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    .local v8, "ret":Landroid/os/Bundle;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .end local v7    # "ret":Landroid/os/Bundle;
    move-result-object v5

    .line 716
    .local v5, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 719
    .local v9, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "servicepackagename"

    .line 721
    const-string/jumbo v11, "servicepackagename"

    .line 720
    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 718
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string/jumbo v10, "servicepackagesignature"

    .line 723
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 726
    const-string/jumbo v10, "servicepackagesignature"

    .line 729
    const-string/jumbo v11, "servicepackagesignature"

    .line 727
    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 725
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 734
    .local v2, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childNode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 735
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 736
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vendorconfigs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 735
    if-eqz v10, :cond_2

    .line 737
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "configChildNode$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 738
    .local v3, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "value"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 740
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 742
    const-string/jumbo v11, "value"

    .line 741
    invoke-direct {p0, v3, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 739
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 748
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNode$iterator":Ljava/util/Iterator;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v4    # "configChildNode$iterator":Ljava/util/Iterator;
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v7, v8

    .line 749
    .end local v8    # "ret":Landroid/os/Bundle;
    :goto_1
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In getConfigDataForSSOVendor: Exception"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .restart local v1    # "childNode$iterator":Ljava/util/Iterator;
    .restart local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ret":Landroid/os/Bundle;
    .restart local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_4
    move-object v7, v8

    .end local v8    # "ret":Landroid/os/Bundle;
    .local v7, "ret":Landroid/os/Bundle;
    goto :goto_2

    .line 748
    .end local v1    # "childNode$iterator":Ljava/util/Iterator;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    .local v7, "ret":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private getDeviceCertificate(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1991
    new-instance v6, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v6}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    .line 1992
    .local v6, "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1993
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1994
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1995
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1996
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1997
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1998
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1999
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1996
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2000
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 2001
    const-string/jumbo v9, "value"

    .line 2000
    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2004
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 2005
    return-object v6
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 569
    const-string/jumbo v1, "enterprise_policy_new"

    .line 568
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExpirationTimeByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    const/4 v4, 0x0

    .line 1901
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1902
    :cond_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1903
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "token is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_1
    return-object v4

    .line 1906
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1907
    .local v0, "protocolType":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1908
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    .line 1919
    return-object v4

    .line 1911
    :pswitch_0
    const-string/jumbo v2, "SAML_RESPONSE_EXPIRED_TIME"

    .line 1910
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1914
    :pswitch_1
    const-string/jumbo v2, "OAUTH_RESPONSE_EXPIRES_IN"

    .line 1913
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1917
    :pswitch_2
    const-string/jumbo v2, "SAML_RESPONSE_EXPIRED_TIME"

    .line 1916
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    if-nez v2, :cond_0

    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 464
    .local v0, "token":J
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "GenericSSOService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 465
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 466
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    .line 467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    .end local v0    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    return-object v2
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 10
    .param p1, "keystorename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1331
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 1332
    .local v5, "ks":Ljava/security/KeyStore;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1333
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1334
    const-string/jumbo v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Keystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is initialized"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :cond_0
    return-object v5

    .line 1348
    .end local v5    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v4

    .line 1349
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :cond_1
    :goto_0
    return-object v9

    .line 1346
    :catch_1
    move-exception v3

    .line 1347
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1344
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getInstanceOfKeyStore: IOException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1342
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1343
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1336
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v2

    .line 1337
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1338
    const-string/jumbo v8, " initializaiton failed (Android API level = "

    .line 1337
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1339
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1337
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1339
    const-string/jumbo v8, ")"

    .line 1337
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1341
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1702
    :try_start_0
    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1703
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1705
    const-string/jumbo v7, "KnoxSSOKey"

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1706
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1707
    const-string/jumbo v7, "GenericSSOService"

    .line 1708
    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    .line 1707
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1711
    .local v6, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1712
    .local v1, "end":Ljava/util/Calendar;
    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1716
    const-string/jumbo v7, "CN=%s, OU=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 1717
    const-string/jumbo v9, "KnoxSSOKey"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1716
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, "certInfo":Ljava/lang/String;
    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 1719
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 1718
    invoke-direct {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 1719
    const-string/jumbo v8, "KnoxSSOKey"

    .line 1718
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    .line 1720
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    .line 1721
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1718
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    .line 1722
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1718
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    .line 1722
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1718
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    .line 1726
    .local v5, "spec":Landroid/security/KeyPairGeneratorSpec;
    const-string/jumbo v7, "RSA"

    const-string/jumbo v8, "AndroidKeyStore"

    .line 1725
    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 1727
    .local v3, "generator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1728
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 1729
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1730
    const-string/jumbo v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Key entry is generated for cert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    .end local v0    # "certInfo":Ljava/lang/String;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v3    # "generator":Ljava/security/KeyPairGenerator;
    .end local v5    # "spec":Landroid/security/KeyPairGeneratorSpec;
    .end local v6    # "start":Ljava/util/Calendar;
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1739
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_2
    const-string/jumbo v7, "KnoxSSOKey"

    const/4 v8, 0x0

    .line 1740
    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1742
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 1743
    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    .line 1742
    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 1732
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_3
    :try_start_1
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1733
    const-string/jumbo v7, "GenericSSOService"

    .line 1734
    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    .line 1733
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v4    # "keyStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 638
    .local v8, "token":J
    :try_start_0
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 639
    const-string/jumbo v7, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In getPackageCertForPkgname: User id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 640
    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    .line 643
    .local v1, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v7, 0x40

    .line 642
    invoke-virtual {v1, p2, v7, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 644
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_2

    .line 645
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 646
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    return-object v12

    .line 649
    :cond_2
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 650
    .local v6, "signs":[Landroid/content/pm/Signature;
    const/4 v7, 0x0

    array-length v10, v6

    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v5, v6, v7

    .line 651
    .local v5, "sign":Landroid/content/pm/Signature;
    if-eqz v5, :cond_4

    .line 652
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 661
    .end local v3    # "pkgCert":Ljava/lang/String;
    .end local v5    # "sign":Landroid/content/pm/Signature;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    .end local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :goto_1
    return-object v3

    .line 650
    .restart local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v3    # "pkgCert":Ljava/lang/String;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "sign":Landroid/content/pm/Signature;
    .restart local v6    # "signs":[Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 658
    .end local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "sign":Landroid/content/pm/Signature;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In getPackageCertForPkgname: Exception"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 657
    .local v2, "npe":Ljava/lang/NullPointerException;
    :try_start_3
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v7, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 661
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 660
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    .line 661
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw v7
.end method

.method private getPackageInfoForPid(II)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 667
    packed-switch p2, :pswitch_data_0

    .line 675
    const/4 v1, 0x0

    return-object v1

    .line 669
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 671
    :pswitch_1
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 673
    .local v0, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameForPid(I)Ljava/lang/String;
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 587
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 588
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 589
    const-string/jumbo v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In getPackageNameForPid:  pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 590
    const-string/jumbo v9, " package name = android"

    .line 589
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    const-string/jumbo v7, "android"

    return-object v7

    .line 593
    :cond_1
    const/4 v4, 0x0

    .line 594
    .local v4, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 595
    .local v6, "procList":Ljava/util/List;
    const/4 v2, 0x0

    .line 597
    .local v2, "iter":Ljava/util/Iterator;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 598
    const-string/jumbo v8, "activity"

    .line 597
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 599
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 601
    .end local v6    # "procList":Ljava/util/List;
    :cond_2
    if-eqz v6, :cond_3

    .line 602
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 603
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 604
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 606
    .local v5, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_3

    .line 607
    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 623
    const-string/jumbo v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In getPackageNameForPid:  pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 624
    const-string/jumbo v9, " package name = "

    .line 623
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_5
    return-object v4

    .line 616
    .end local v0    # "am":Landroid/app/ActivityManager;
    .restart local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GenericSSOService"

    .line 618
    const-string/jumbo v8, "In getPackageNameForPid: Exception in getPackageNameForPid"

    .line 617
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    return-object v9

    .line 611
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 612
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "GenericSSOService"

    .line 613
    const-string/jumbo v8, "In getPackageNameForPid: null pointer exception in getPackageNameForPid"

    .line 612
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    return-object v9
.end method

.method private getRefreshTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    const/4 v4, 0x0

    .line 1884
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1885
    :cond_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1886
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In getRefreshTokenByProtocolType: token is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_1
    return-object v4

    .line 1889
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1890
    .local v0, "protocolType":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1891
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    .line 1896
    return-object v4

    .line 1894
    :pswitch_0
    const-string/jumbo v2, "OAUTH_RESPONSE_REFRESH_TOKEN"

    .line 1893
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1891
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1028
    const-string/jumbo v1, "ssoconfig.xml"

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 914
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 915
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 916
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getSSOConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    return-object v3
.end method

.method private getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    .line 1138
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1139
    const-string/jumbo v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In getSSOService: SSO service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->-get0(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    return-object v1

    .line 1141
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "servicePkgName"    # Ljava/lang/String;

    .prologue
    .line 1113
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1114
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1116
    const-string/jumbo v4, ".genericssoconnection"

    .line 1115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1118
    const-string/jumbo v3, "GenericSSOService"

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In getSSOServiceIntent: action is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1120
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1118
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    return-object v2

    .line 1124
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In getSSOServiceIntent: Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 1122
    :catch_1
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In getSSOServiceIntent: NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1645
    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1648
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_0

    .line 1649
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 1663
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1664
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1665
    .local v4, "wrapCipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1668
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1669
    const-string/jumbo v5, "GenericSSOService"

    .line 1670
    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    .line 1669
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 1672
    .local v1, "key":Ljavax/crypto/SecretKey;
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1673
    const-string/jumbo v5, "GenericSSOService"

    .line 1674
    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    .line 1673
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    .line 1676
    .local v3, "keyWrapped":[B
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1677
    const-string/jumbo v5, "GenericSSOService"

    .line 1678
    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    .line 1677
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_3
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->writeKeyData(Ljava/io/File;[B)V

    .line 1680
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1681
    const-string/jumbo v5, "GenericSSOService"

    .line 1682
    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    .line 1681
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "keyWrapped":[B
    :cond_4
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1687
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->readKeyData(Ljava/io/File;)[B

    move-result-object v0

    .line 1689
    .local v0, "encryptedKey":[B
    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1690
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1691
    const-string/jumbo v5, "GenericSSOService"

    .line 1692
    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    .line 1691
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_6
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v5

    .line 1645
    .end local v0    # "encryptedKey":[B
    .end local v2    # "keyFile":Ljava/io/File;
    .end local v4    # "wrapCipher":Ljavax/crypto/Cipher;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getTempConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1038
    const-string/jumbo v1, "tmpssoconfig.xml"

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v1, "tima"

    .line 629
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 631
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTokenByRefreshToken(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    .line 1926
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1929
    .local v12, "userId":I
    const-string/jumbo v1, "servicepackagename"

    .line 1928
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1930
    .local v9, "serviceIntent":Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 1931
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1932
    const-string/jumbo v1, "GenericSSOService"

    .line 1933
    const-string/jumbo v2, "In getTokenByRefreshToken: cannot get SSO Service intent"

    .line 1932
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1937
    :cond_1
    invoke-direct {p0, v12, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 1938
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v10

    .line 1939
    .local v10, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v10, :cond_2

    .line 1940
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenByRefreshToken: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/4 v1, 0x0

    return-object v1

    .line 1944
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    .line 1946
    const-string/jumbo v1, "servicepackagename"

    .line 1945
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1948
    const-string/jumbo v2, "clientpackagename"

    .line 1947
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1949
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    .line 1944
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 1951
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-interface {v10, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireTokenByRefreshToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v11

    .line 1953
    .local v11, "tokenResponse":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-nez v11, :cond_3

    .line 1954
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenByRefreshToken: Fail to acquire valid token from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    const/4 v1, 0x0

    return-object v1

    .line 1961
    :cond_3
    return-object v11

    .line 1966
    .end local v0    # "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    .end local v10    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .end local v11    # "tokenResponse":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .end local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 1967
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenByRefreshToken: Exception"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1969
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1964
    :catch_1
    move-exception v6

    .line 1965
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenByRefreshToken: RemoteException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1962
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 1963
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenByRefreshToken: NullPointerException"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTokenConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1033
    const-string/jumbo v1, "ssotoken.xml"

    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 929
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 930
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 931
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    return-object v3
.end method

.method private getTokenFromConfigData(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 3752
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    .line 3751
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 3753
    .local v9, "serviceIntent":Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 3754
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3755
    const-string/jumbo v1, "GenericSSOService"

    .line 3756
    const-string/jumbo v3, "In getTokenFromConfigData: cannot get SSO Service intent"

    .line 3755
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_0
    return-object v12

    .line 3760
    :cond_1
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3761
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v10

    .line 3763
    .local v10, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v10, :cond_3

    .line 3764
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 3765
    const-string/jumbo v1, "GenericSSOService"

    .line 3766
    const-string/jumbo v3, "In getTokenFromConfigData: sso service is not ready to use"

    .line 3765
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_2
    return-object v12

    .line 3770
    :cond_3
    const-string/jumbo v1, "clientpackagename"

    .line 3769
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3773
    .local v2, "appPkgName":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    .line 3775
    const-string/jumbo v1, "servicepackagename"

    .line 3774
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3776
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    .line 3773
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 3778
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-interface {v10, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v11

    .line 3779
    .local v11, "tokenResponse":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-nez v11, :cond_5

    .line 3780
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 3781
    const-string/jumbo v1, "GenericSSOService"

    .line 3782
    const-string/jumbo v3, "In getTokenFromConfigData: Fail to acquire valid token from sso service"

    .line 3781
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3783
    :cond_4
    return-object v12

    .line 3788
    :cond_5
    return-object v11

    .line 3793
    .end local v0    # "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    .end local v2    # "appPkgName":Ljava/lang/String;
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    .end local v10    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .end local v11    # "tokenResponse":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :catch_0
    move-exception v7

    .line 3794
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v3, "In getTokenFromConfigData: Exception"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3796
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v12

    .line 3791
    :catch_1
    move-exception v6

    .line 3792
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v3, "In getTokenFromConfigData: RemoteException"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3789
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 3790
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v3, "In getTokenFromConfigData: NullPointerException"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3534
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3535
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3536
    const-string/jumbo v3, "GenericSSOService"

    .line 3537
    const-string/jumbo v4, "In getTokenFromGenericSSO: appPkgName is null or empty string"

    .line 3536
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3541
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3542
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3543
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3544
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3545
    const-string/jumbo v3, "GenericSSOService"

    .line 3546
    const-string/jumbo v4, "In getTokenFromGenericSSO: authenticator is not permitted to call this API"

    .line 3545
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 3549
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3550
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3551
    const-string/jumbo v3, "GenericSSOService"

    .line 3552
    const-string/jumbo v4, "In getTokenFromGenericSSO: appPkgName is authenticator packagename, we return share token back"

    .line 3551
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3

    .line 3555
    :cond_4
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3556
    const-string/jumbo v3, "GenericSSOService"

    .line 3557
    const-string/jumbo v4, "In getTokenFromGenericSSO: appPkgName is not application packagename, we return app token back"

    .line 3556
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3
.end method

.method private getTokenFromLocalCache(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 3801
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 3803
    .local v6, "userId":I
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3804
    const-string/jumbo v7, "GenericSSOService"

    .line 3805
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In getTokenFromLocalCache: get Token from cache for user Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3804
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    :cond_0
    :try_start_0
    const-string/jumbo v7, "clientpackagename"

    .line 3808
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3810
    .local v1, "appPkgName":Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v4

    .line 3812
    .local v4, "tokenCached":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v4, :cond_4

    .line 3813
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAccessTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3814
    .local v0, "accessTokenValue":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getExpirationTimeByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;

    move-result-object v5

    .line 3815
    .local v5, "tokenExpirationTime":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3816
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3819
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3820
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3821
    const-string/jumbo v7, "GenericSSOService"

    .line 3822
    const-string/jumbo v8, "In getTokenFromLocalCache: token in cache expired, so getTokenByRefreshToken is called"

    .line 3821
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenByRefreshToken(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3824
    .local v3, "info":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v3, :cond_4

    .line 3825
    return-object v3

    .line 3817
    .end local v3    # "info":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :cond_3
    return-object v4

    .line 3828
    .end local v0    # "accessTokenValue":Ljava/lang/String;
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v4    # "tokenCached":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .end local v5    # "tokenExpirationTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3829
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v8, "In getTokenFromLocalCache: Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v10
.end method

.method private getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3444
    new-instance v6, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v6}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    .line 3445
    .local v6, "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3446
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 3447
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 3448
    .local v7, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_2

    .line 3449
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3450
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 3451
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3452
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v12, :cond_0

    .line 3453
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3450
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3454
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 3455
    const-string/jumbo v10, "value"

    .line 3454
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3460
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_2
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3461
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_5

    .line 3462
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3463
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 3464
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3465
    .restart local v4    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v12, :cond_3

    .line 3466
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3463
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3467
    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 3468
    const-string/jumbo v10, "value"

    .line 3467
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3473
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3474
    return-object v11

    .line 3476
    :cond_6
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 3477
    return-object v6
.end method

.method private getUserCertificate(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1973
    new-instance v5, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    .line 1974
    .local v5, "retToken":Lcom/samsung/android/knox/sso/common/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1976
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1977
    .local v6, "userCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1978
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1979
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1980
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1981
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1978
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1982
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 1983
    const-string/jumbo v9, "value"

    .line 1982
    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1986
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 1987
    return-object v5
.end method

.method private getUserId()I
    .locals 5

    .prologue
    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 943
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 944
    .local v1, "userId":I
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 945
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    return v1
.end method

.method private getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "solution"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1182
    if-nez p1, :cond_1

    .line 1183
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1184
    const-string/jumbo v0, "GenericSSOService"

    .line 1185
    const-string/jumbo v1, "In getWhitelistAppNode: In getWhitelistAppNode: solution node is null"

    .line 1184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    return-object v2

    .line 1188
    :cond_1
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1189
    const-string/jumbo v0, "GenericSSOService"

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In getWhitelistAppNode: In getWhitelistAppNode: child node whitelistpackage is searched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1191
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1194
    const-string/jumbo v3, "servicepackagename"

    .line 1191
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_2
    const-string/jumbo v0, "whitelistpackage"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "expireOn"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 1795
    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 1796
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setInitTime()V

    .line 1798
    :cond_1
    const/4 v3, 0x1

    .line 1800
    .local v3, "hasExipired":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1801
    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1800
    sub-long/2addr v6, v8

    .line 1801
    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    .line 1800
    add-long v0, v6, v8

    .line 1802
    .local v0, "currentUTCTime":J
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1803
    const-string/jumbo v6, "In hasTokenExpired: SystemClock.elapsedRealtime()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1803
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_2
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1806
    const-string/jumbo v6, "In hasTokenExpired: initElapsedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1807
    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1806
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_3
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1809
    const-string/jumbo v6, "In hasTokenExpired: initUTCTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_4
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1813
    const-string/jumbo v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentUTCtime vs expireOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1814
    const-string/jumbo v8, " vs "

    .line 1813
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1816
    .local v4, "expireTime":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    const/4 v3, 0x1

    .line 1817
    .local v3, "hasExipired":Z
    :goto_0
    if-eqz v3, :cond_7

    .line 1818
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In hasTokenExpired: the token obtained has expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    .end local v0    # "currentUTCTime":J
    .end local v3    # "hasExipired":Z
    .end local v4    # "expireTime":J
    :goto_1
    return v3

    .line 1816
    .restart local v0    # "currentUTCTime":J
    .local v3, "hasExipired":Z
    .restart local v4    # "expireTime":J
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 1820
    .local v3, "hasExipired":Z
    :cond_7
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In hasTokenExpired: the token obtained is still valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1821
    .end local v0    # "currentUTCTime":J
    .end local v3    # "hasExipired":Z
    .end local v4    # "expireTime":J
    :catch_0
    move-exception v2

    .line 1822
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "GenericSSOService"

    const-string/jumbo v7, "In hasTokenExpired: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initKeyStore()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1374
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_0

    .line 1375
    const-string/jumbo v2, "TIMAKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1389
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1390
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v0, "keyFile":Ljava/io/File;
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1394
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v1, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1400
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1401
    const-string/jumbo v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    .line 1400
    if-eqz v2, :cond_4

    .line 1402
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1403
    const-string/jumbo v2, "GenericSSOService"

    .line 1404
    const-string/jumbo v3, "In initKeyStore: Starting doing the migration from AndroidKeyStore to TIMA keystore"

    .line 1403
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1411
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1412
    const-string/jumbo v2, "GenericSSOService"

    .line 1413
    const-string/jumbo v3, "In initKeyStore: Saving the secretKey to TIMA 3.0 KeyStore"

    .line 1412
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string/jumbo v3, "GenericSSOService"

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1415
    const-string/jumbo v5, "password_for_secret_key"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 1414
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1421
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1422
    const-string/jumbo v2, "GenericSSOService"

    .line 1423
    const-string/jumbo v3, "In initKeyStore: Cleaning up variables from memory, as well as keypair and keyfile from storage."

    .line 1422
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_3
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1426
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1428
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1429
    const-string/jumbo v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1433
    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :cond_4
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_5

    .line 1434
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1436
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_7

    .line 1437
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1438
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_6
    :goto_0
    return-void

    .line 1440
    :cond_7
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1441
    const-string/jumbo v2, "GenericSSOService"

    .line 1442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In initKeyStore: Keystore Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v4}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1443
    const-string/jumbo v4, " is running"

    .line 1442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1441
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRequestConfigDoc(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 811
    const/4 v8, 0x0

    .line 812
    .local v8, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, "filepath":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 816
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 818
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 820
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 821
    :cond_0
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 822
    const-string/jumbo v10, "GenericSSOService"

    .line 823
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In initRequestConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 825
    const-string/jumbo v12, ", an empty config file is created"

    .line 823
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 822
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 827
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v10, "configuration"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 828
    .local v7, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 829
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 830
    new-instance v10, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v10, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 839
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 840
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is loaded for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :cond_2
    if-eqz v8, :cond_3

    .line 850
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_3
    :goto_1
    return-void

    .line 832
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_2
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initRequestConfigDoc: ssoconfig.xml does exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 835
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 836
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v11, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 852
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 853
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 845
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 846
    .local v5, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_4
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initRequestConfigDoc: SAXException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 849
    if-eqz v8, :cond_3

    .line 850
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 852
    :catch_2
    move-exception v3

    .line 853
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 843
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v4

    .line 844
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initRequestConfigDoc: ParserConfigurationException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 849
    if-eqz v8, :cond_3

    .line 850
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 852
    :catch_4
    move-exception v3

    .line 853
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 841
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v3

    .line 842
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initRequestConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 849
    if-eqz v8, :cond_3

    .line 850
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 852
    :catch_6
    move-exception v3

    .line 853
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 847
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 849
    :goto_5
    if-eqz v8, :cond_5

    .line 850
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 847
    :cond_5
    :goto_6
    throw v10

    .line 852
    :catch_7
    move-exception v3

    .line 853
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 847
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 841
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 843
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    .restart local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 845
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Lorg/xml/sax/SAXException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private initTokenConfigDoc(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 863
    const/4 v8, 0x0

    .line 864
    .local v8, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v6

    .line 866
    .local v6, "filepath":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 868
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 870
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 872
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 873
    :cond_0
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 874
    const-string/jumbo v10, "GenericSSOService"

    .line 875
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In initTokenConfigDoc: ssotoken.xml doesn\'t exist for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 877
    const-string/jumbo v12, ", an empty config file is created"

    .line 875
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 874
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 879
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v10, "ssotoken"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 880
    .local v7, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 881
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 882
    new-instance v10, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v10, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 891
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 892
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In initTokenConfigDoc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 893
    const-string/jumbo v12, " is loaded for userId "

    .line 892
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    :cond_2
    if-eqz v8, :cond_3

    .line 903
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 862
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_3
    :goto_1
    return-void

    .line 884
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_2
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initTokenConfigDoc: ssotoken.xml does exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 886
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 887
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 888
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    .line 889
    new-instance v11, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v11, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 888
    invoke-virtual {v10, p1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 905
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 906
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 898
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 899
    .local v5, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_4
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initTokenConfigDoc: SAXException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 902
    if-eqz v8, :cond_3

    .line 903
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 905
    :catch_2
    move-exception v3

    .line 906
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 896
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v4

    .line 897
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initTokenConfigDoc: ParserConfigurationException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 902
    if-eqz v8, :cond_3

    .line 903
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 905
    :catch_4
    move-exception v3

    .line 906
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 894
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v3

    .line 895
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In initTokenConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 902
    if-eqz v8, :cond_3

    .line 903
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 905
    :catch_6
    move-exception v3

    .line 906
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 900
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 902
    :goto_5
    if-eqz v8, :cond_5

    .line 903
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 900
    :cond_5
    :goto_6
    throw v10

    .line 905
    :catch_7
    move-exception v3

    .line 906
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 900
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 894
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 896
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    .restart local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 898
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Lorg/xml/sax/SAXException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private installedServiceIsPermitted(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1081
    :try_start_0
    const-string/jumbo v4, "servicepackagename"

    .line 1080
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "servicePkgName":Ljava/lang/String;
    const-string/jumbo v4, "servicepackagesignature"

    .line 1082
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "servicePkgCert":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1085
    const-string/jumbo v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In installedServiceIsPermitted: service package cert is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return v8

    .line 1088
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "installedServicePkgCert":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1091
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1092
    const-string/jumbo v4, "GenericSSOService"

    .line 1093
    const-string/jumbo v5, "In installedServiceIsPermitted: service package cert is matched between configured and installed"

    .line 1092
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_1
    return v8

    .line 1096
    :cond_2
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1097
    const-string/jumbo v4, "GenericSSOService"

    .line 1098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In installedServiceIsPermitted: Fail to pass the servicePkg cert check: (ondevice vs config) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1100
    const-string/jumbo v6, " vs "

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1097
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :cond_3
    return v7

    .line 1105
    .end local v1    # "installedServicePkgCert":Ljava/lang/String;
    .end local v2    # "servicePkgCert":Ljava/lang/String;
    .end local v3    # "servicePkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In installedServiceIsPermitted: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1108
    return v7
.end method

.method private isCallingMDMMatch(II)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "mdmUid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2347
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    const/4 v2, 0x0

    .line 2348
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2349
    .local v3, "mdmUidNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 2350
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 2351
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 2353
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2354
    const-string/jumbo v4, "GenericSSOService"

    .line 2355
    const-string/jumbo v5, "In isCallingMDMMatch: the enrolledVendor is null, return true"

    .line 2354
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_0
    return v8

    .line 2359
    :cond_1
    const-string/jumbo v4, "mdmuid"

    .line 2358
    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2360
    .local v3, "mdmUidNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_3

    .line 2361
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 2362
    const-string/jumbo v4, "GenericSSOService"

    .line 2363
    const-string/jumbo v5, "In isCallingMDMMatch: the mDmUidNode is null, return false"

    .line 2362
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_2
    return v7

    .line 2366
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2367
    return v7

    .line 2369
    :cond_4
    return v8

    .line 2373
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    .local v3, "mdmUidNode":Lorg/w3c/dom/Node;
    :cond_5
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 2374
    const-string/jumbo v4, "GenericSSOService"

    .line 2375
    const-string/jumbo v5, "In isCallingMDMMatch: the configDoc is null, return true"

    .line 2374
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    :cond_6
    return v8

    .line 2378
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 2379
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In isCallingMDMMatch: NullPointerException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2381
    return v7
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    .prologue
    .line 4005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4006
    .local v4, "token1":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 4007
    const-string/jumbo v6, "connectivity"

    .line 4006
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4008
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4009
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 4010
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 4011
    :goto_0
    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4012
    const-string/jumbo v3, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Network type detected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4014
    return v2

    .line 4009
    :cond_1
    const/4 v2, 0x0

    .local v2, "isConnected":Z
    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/os/Bundle;

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 577
    :cond_1
    return v1
.end method

.method private loadKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1600
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_1

    .line 1601
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1602
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1603
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    return-void

    .line 1607
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_3

    .line 1608
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1609
    const-string/jumbo v2, "GenericSSOService"

    .line 1610
    const-string/jumbo v3, "In loadKey: loadkey() failed, because keystore is not initialized"

    .line 1609
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_2
    return-void

    .line 1614
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1615
    .local v0, "token":J
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1616
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1617
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1618
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1619
    const-string/jumbo v4, "password_for_secret_key"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1618
    invoke-virtual {v2, p1, v3, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1620
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1621
    const-string/jumbo v2, "GenericSSOService"

    .line 1622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: keystore doesn\'t contain key with alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1623
    const-string/jumbo v4, ", so a new one is stored"

    .line 1622
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1629
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: secreteKey got from TIMAKeystore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1630
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1629
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_5
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1599
    return-void

    .line 1625
    :cond_6
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1626
    const-string/jumbo v3, "password_for_secret_key"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1625
    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    goto :goto_0

    .line 1631
    :cond_7
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "androidkeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1632
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1633
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_5

    .line 1634
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1635
    const-string/jumbo v2, "GenericSSOService"

    .line 1636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1637
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1636
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1635
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private nextSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1855
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1856
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x1

    .line 4020
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 4021
    .local v5, "serviceIntent":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 4022
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4023
    const-string/jumbo v7, "GenericSSOService"

    .line 4024
    const-string/jumbo v8, "In pushAuthenticatorConfig: cannot get SSO Service intent"

    .line 4023
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_0
    return v10

    .line 4028
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4029
    .local v2, "identity":J
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4030
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    .line 4032
    .local v6, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v6, :cond_3

    .line 4033
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 4034
    const-string/jumbo v7, "GenericSSOService"

    .line 4035
    const-string/jumbo v8, "In pushAuthenticatorConfig: sso service is not ready to use"

    .line 4034
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    :cond_2
    return v10

    .line 4039
    :cond_3
    invoke-interface {v6, p3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v4

    .line 4040
    .local v4, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4042
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 4043
    if-nez v4, :cond_5

    .line 4044
    const-string/jumbo v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4046
    const-string/jumbo v9, " successfully complete this request"

    .line 4044
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    :cond_4
    :goto_0
    return v4

    .line 4048
    :cond_5
    const-string/jumbo v7, "GenericSSOService"

    .line 4049
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4051
    const-string/jumbo v9, " fails to complete this request with error code "

    .line 4049
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4048
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4055
    .end local v2    # "identity":J
    .end local v4    # "ret":I
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    .end local v6    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    :catch_0
    move-exception v0

    .line 4056
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v8, "In pushAuthenticatorConfig: RemoteException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4060
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v10

    .line 4057
    :catch_1
    move-exception v1

    .line 4058
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v8, "In pushAuthenticatorConfig: Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reAuthenInAuthenticator(I)I
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 2966
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v5

    .line 2967
    .local v5, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 2968
    .local v11, "ssoNode":Lorg/w3c/dom/Node;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2970
    .local v4, "configData":Landroid/os/Bundle;
    const-string/jumbo v15, "servicepackagename"

    .line 2969
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 2972
    .local v14, "vendorAuthPkgName":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagename"

    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    const/4 v13, 0x0

    .line 2976
    .local v13, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagesignature"

    .line 2975
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 2978
    const-string/jumbo v15, "servicepackagesignature"

    .line 2977
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 2981
    .local v13, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagesignature"

    .line 2980
    invoke-virtual {v4, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    .end local v13    # "vendorAuthPkgCert":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2985
    sget-boolean v15, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_1

    .line 2986
    const-string/jumbo v15, "GenericSSOService"

    .line 2987
    const-string/jumbo v16, "In reAuthenInAuthenticator: Fail to pass the service package cert check"

    .line 2986
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    :cond_1
    const/16 v15, -0xd

    return v15

    .line 2991
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 2992
    .local v9, "serviceIntent":Landroid/content/Intent;
    if-nez v9, :cond_4

    .line 2993
    sget-boolean v15, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_3

    .line 2994
    const-string/jumbo v15, "GenericSSOService"

    .line 2995
    const-string/jumbo v16, "In reAuthenInAuthenticator: cannot get SSO Service intent"

    .line 2994
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_3
    const/4 v15, -0x1

    return v15

    .line 2998
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 2999
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v12

    .line 3000
    .local v12, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v12, :cond_6

    .line 3001
    sget-boolean v15, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_5

    .line 3002
    const-string/jumbo v15, "GenericSSOService"

    .line 3003
    const-string/jumbo v16, "In reAuthenInAuthenticator: sso service is not ready to use"

    .line 3002
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_5
    const/4 v15, -0x1

    return v15

    .line 3006
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3007
    .local v2, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .line 3008
    .local v3, "appPkgName":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 3009
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    .line 3010
    const-string/jumbo v16, "clientpackagename"

    .line 3009
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 3013
    .end local v3    # "appPkgName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 3015
    .local v10, "ssoConfig":Landroid/os/Bundle;
    invoke-interface {v12, v10}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->forceAuthenticate(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    return v15

    .line 3020
    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    .end local v10    # "ssoConfig":Landroid/os/Bundle;
    .end local v11    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v12    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .end local v14    # "vendorAuthPkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 3021
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "GenericSSOService"

    const-string/jumbo v16, "In reAuthenInAuthenticator: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3023
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v15, -0x1

    return v15

    .line 3018
    :catch_1
    move-exception v6

    .line 3019
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v15, "GenericSSOService"

    const-string/jumbo v16, "In reAuthenInAuthenticator: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3016
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 3017
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v15, "GenericSSOService"

    const-string/jumbo v16, "In reAuthenInAuthenticator: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1773
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1774
    const-string/jumbo v4, "GenericSSOService"

    const-string/jumbo v5, "In readKeyData: Reading key data from a file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1778
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1779
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 1781
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1782
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1786
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    :catchall_0
    move-exception v4

    .line 1787
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1786
    throw v4

    .line 1785
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1787
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1785
    return-object v4
.end method

.method private registerReceiverForKeyClear()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 476
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;-><init>()V

    .line 480
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 475
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 15
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 995
    const/4 v8, 0x0

    .line 996
    .local v8, "stream":Ljava/io/FileOutputStream;
    sget-object v13, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v13

    .line 998
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 1000
    .local v11, "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 1002
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 1004
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    if-nez p1, :cond_0

    .line 1005
    :try_start_1
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v7}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 1009
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_0
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 1010
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v10, v7, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1011
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_1
    monitor-exit v13

    .line 994
    return-void

    .line 1007
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v11    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :try_start_2
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_0

    .line 1020
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1021
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v14, "In getTokenConfigForUserId: IOException"

    invoke-static {v12, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 996
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    monitor-exit v13

    throw v12

    .line 1018
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 1019
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_4
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v14, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1016
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 1017
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v14, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v12, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1014
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 1015
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v5, "e":Ljavax/xml/transform/TransformerException;
    :goto_6
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1012
    .end local v5    # "e":Ljavax/xml/transform/TransformerException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    .line 1013
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_7
    const-string/jumbo v12, "GenericSSOService"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 996
    .end local v4    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v11    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1012
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1014
    .end local v4    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljavax/xml/transform/TransformerException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1016
    .end local v5    # "e":Ljavax/xml/transform/TransformerException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1018
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NullPointerException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1020
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setInitTime()V
    .locals 6

    .prologue
    .line 1833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1834
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1836
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    .line 1837
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    .line 1838
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    .line 1837
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1839
    .local v0, "countDownTimeout":Z
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1840
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In setInitTime: CountDownLatch return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    .end local v0    # "countDownTimeout":Z
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1846
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setInitTime: UTC time when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1847
    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    .line 1846
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_1
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1849
    const-string/jumbo v2, "GenericSSOService"

    .line 1850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setInitTime: elapsedRealtime() when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1851
    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1850
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1849
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_2
    return-void

    .line 1841
    :catch_0
    move-exception v1

    .line 1842
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setInitTime: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWhitelistAllAppsState(ZI)Z
    .locals 6
    .param p1, "state"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2420
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2421
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2420
    :goto_0
    invoke-static {v4, v5, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 2422
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2423
    return v0

    .line 2421
    .end local v0    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopAuthenticatorApplication(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2021
    if-nez p1, :cond_1

    .line 2022
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2023
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In stopAuthenticatorApplication: packageName is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_0
    return-void

    .line 2026
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2028
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 2029
    const-string/jumbo v11, "activity"

    .line 2028
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2032
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 2031
    invoke-virtual {v0, v10, v11, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v5

    .line 2033
    .local v5, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2036
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "task$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2037
    .local v6, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2038
    .local v3, "origInt":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2039
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 2040
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2042
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2043
    iget v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 2044
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In stopAuthenticatorApplication: the task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "has been removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2049
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "origInt":Landroid/content/Intent;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v6    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7    # "task$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2050
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In stopAuthenticatorApplication: could not stop app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2020
    return-void
.end method

.method private unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "vendorAuthPkgName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 3030
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 3031
    .local v3, "serviceIntent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 3032
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3033
    const-string/jumbo v5, "GenericSSOService"

    .line 3034
    const-string/jumbo v6, "In unRegisterInAuthenticator: cannot get SSO Service intent"

    .line 3033
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_0
    return v7

    .line 3037
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3038
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    .line 3039
    .local v4, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v4, :cond_3

    .line 3040
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 3041
    const-string/jumbo v5, "GenericSSOService"

    .line 3042
    const-string/jumbo v6, "In unRegisterInAuthenticator: sso service is not ready to use"

    .line 3041
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_2
    return v7

    .line 3045
    :cond_3
    invoke-interface {v4, p3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->unregister(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 3050
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    .end local v4    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    :catch_0
    move-exception v1

    .line 3051
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "In unRegisterInAuthenticator"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3053
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v7

    .line 3048
    :catch_1
    move-exception v0

    .line 3049
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "In unRegisterInAuthenticator: RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3046
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 3047
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "GenericSSOService"

    const-string/jumbo v6, "In unRegisterInAuthenticator: NullPointerException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterByAuthenticator(I)I
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 3057
    const/4 v10, 0x0

    .line 3059
    .local v10, "ret":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v5

    .line 3060
    .local v5, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 3061
    .local v12, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v12, :cond_0

    .line 3062
    return v10

    .line 3065
    :cond_0
    const-string/jumbo v15, "servicepackagename"

    .line 3064
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 3067
    .local v14, "vendorAuthPkgName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3069
    .local v13, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagesignature"

    .line 3068
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 3071
    const-string/jumbo v15, "servicepackagesignature"

    .line 3070
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 3074
    .end local v13    # "vendorAuthPkgCert":Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3075
    .local v4, "configData":Landroid/os/Bundle;
    const-string/jumbo v15, "servicepackagename"

    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    const-string/jumbo v15, "servicepackagesignature"

    .line 3077
    invoke-virtual {v4, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 3081
    sget-boolean v15, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 3082
    const-string/jumbo v15, "GenericSSOService"

    .line 3083
    const-string/jumbo v16, "In unregisterByAuthenticator: Fail to pass the service package cert check"

    .line 3082
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_2
    const/16 v15, -0xd

    return v15

    .line 3087
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3088
    .local v2, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .line 3089
    .local v3, "appPkgName":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 3090
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    .line 3091
    const-string/jumbo v16, "clientpackagename"

    .line 3090
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 3094
    .end local v3    # "appPkgName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 3095
    .local v11, "ssoConfig":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3096
    .local v8, "identity":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    .line 3098
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3106
    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "identity":J
    .end local v11    # "ssoConfig":Landroid/os/Bundle;
    .end local v12    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v14    # "vendorAuthPkgName":Ljava/lang/String;
    :goto_0
    return v10

    .line 3102
    :catch_0
    move-exception v6

    .line 3103
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "GenericSSOService"

    const-string/jumbo v16, "In unregisterByAuthenticator: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3104
    const/4 v10, -0x1

    goto :goto_0

    .line 3099
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 3100
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v15, "GenericSSOService"

    const-string/jumbo v16, "In unregisterByAuthenticator: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3101
    const/4 v10, -0x1

    goto :goto_0
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "keyBlob"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1756
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1757
    const-string/jumbo v0, "AES"

    .line 1758
    const/4 v1, 0x3

    .line 1757
    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 957
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 958
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 959
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 960
    const-string/jumbo v1, "GenericSSOService"

    .line 961
    const-string/jumbo v2, "In updateCacheAndFile: updated sso config doc is updated in requestConfigXMLDocs array"

    .line 960
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 965
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 966
    const-string/jumbo v1, "GenericSSOService"

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In updateCacheAndFile: updated sso request config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 968
    const-string/jumbo v3, " for userId "

    .line 967
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 978
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->-wrap3(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 979
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 981
    const-string/jumbo v1, "GenericSSOService"

    .line 982
    const-string/jumbo v2, "In updateCacheAndFile: updated sso token doc is updated in tokenConfigXMLDocs array"

    .line 981
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 986
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 987
    const-string/jumbo v1, "GenericSSOService"

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In updateCacheAndFile: updated sso token config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 989
    const-string/jumbo v3, " for userId "

    .line 988
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    return-void
.end method

.method private vendorPermissionCheck(ILjava/lang/String;)Z
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 3483
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 3484
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 3486
    .local v5, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v9, "servicepackagename"

    .line 3485
    invoke-direct {p0, v5, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 3487
    .local v6, "vendorAuthPkg":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 3489
    .local v8, "vendorAuthPkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3490
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 3493
    .end local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v9, "servicepackagesignature"

    .line 3492
    invoke-direct {p0, v5, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3494
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3495
    return v12

    .line 3499
    :cond_1
    const-string/jumbo v9, "servicepackagesignature"

    .line 3498
    invoke-direct {p0, v5, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 3501
    .local v7, "vendorAuthPkgCert":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3503
    .local v4, "packageCert":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3504
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 3503
    if-eqz v9, :cond_2

    .line 3505
    return v12

    .line 3508
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "packageCert":Ljava/lang/String;
    .end local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .end local v7    # "vendorAuthPkgCert":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3509
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In vendorPermissionCheck: exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 3514
    .local v3, "isSharedDevice":Z
    iget-object v9, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "enterprise_policy_new"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3515
    .local v2, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v2, :cond_3

    .line 3516
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3517
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    .line 3518
    .local v3, "isSharedDevice":Z
    const-string/jumbo v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SharedDevice: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    .end local v3    # "isSharedDevice":Z
    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v9, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3522
    return v12

    .line 3524
    :cond_4
    const-string/jumbo v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UserId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    const/4 v9, 0x0

    return v9
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1749
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1750
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1763
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In writeKeyData: Writing key data to a file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1766
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1761
    return-void

    .line 1767
    :catchall_0
    move-exception v1

    .line 1768
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1767
    throw v1
.end method


# virtual methods
.method public _unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2453
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2454
    .local v4, "mdmUid":I
    invoke-direct {p0, p3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2455
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 2456
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_0
    const/16 v7, -0xa

    return v7

    .line 2459
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2460
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 2461
    const-string/jumbo v7, "GenericSSOService"

    .line 2462
    const-string/jumbo v10, "In unenrollSSOVendor: authenticatorPkgName is null or empty"

    .line 2461
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_2
    const/4 v7, -0x3

    return v7

    .line 2466
    :cond_3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2467
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2468
    .local v3, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_4

    .line 2469
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2476
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearConfigAndTokenForAuthenticator(I)I

    move-result v6

    .line 2477
    .local v6, "ret":I
    if-eqz v6, :cond_6

    .line 2478
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In unenrollSSOVendor: failed clearConfigAndTokenFor Authenticator"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/16 v7, -0x10

    return v7

    .line 2470
    .end local v6    # "ret":I
    :cond_4
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 2471
    const-string/jumbo v7, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In unenrollSSOVendor: this authenticator "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2472
    const-string/jumbo v11, " is not enrolled"

    .line 2471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_5
    const/4 v7, -0x6

    return v7

    .line 2482
    .restart local v6    # "ret":I
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2483
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->stopAuthenticatorApplication(Ljava/lang/String;I)V

    .line 2486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2487
    .local v8, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2488
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2491
    const/16 v7, 0x64

    if-lt p3, v7, :cond_7

    .line 2492
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v10, 0x7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2493
    .local v5, "message":Landroid/os/Message;
    iput p3, v5, Landroid/os/Message;->arg1:I

    .line 2494
    const/4 v7, 0x1

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 2495
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2496
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    .end local v5    # "message":Landroid/os/Message;
    :cond_7
    return v6

    .line 2501
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v6    # "ret":I
    .end local v8    # "token":J
    :catch_0
    move-exception v1

    .line 2502
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In unenrollSSOVendor: Exception"

    invoke-static {v7, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2504
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v7, -0x1

    return v7

    .line 2499
    :catch_1
    move-exception v2

    .line 2500
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "GenericSSOService"

    const-string/jumbo v10, "In unenrollSSOVendor: NullPointerException"

    invoke-static {v7, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 4191
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    .line 4190
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 4192
    .local v9, "serviceIntent":Landroid/content/Intent;
    if-nez v9, :cond_0

    .line 4193
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    return-object v12

    .line 4198
    :cond_0
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4200
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v10

    .line 4201
    .local v10, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v10, :cond_1

    .line 4202
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    return-object v12

    .line 4206
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    .line 4208
    const-string/jumbo v1, "servicepackagename"

    .line 4207
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4210
    const-string/jumbo v2, "clientpackagename"

    .line 4209
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4211
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    .line 4206
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 4213
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-interface {v10, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireUserInfo(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v11

    .line 4214
    .local v11, "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    if-nez v11, :cond_3

    .line 4215
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 4216
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: Fail to get valid UserInfo from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4217
    :cond_2
    return-object v12

    .line 4219
    :cond_3
    return-object v11

    .line 4224
    .end local v0    # "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    .end local v10    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .end local v11    # "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    :catch_0
    move-exception v7

    .line 4225
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: Exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4227
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v12

    .line 4222
    :catch_1
    move-exception v6

    .line 4223
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4220
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 4221
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In acquireUserInfo: null pointer exception in getToken"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addAppTokenToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3631
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p3, :cond_2

    .line 3633
    :cond_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3634
    const-string/jumbo v3, "GenericSSOService"

    .line 3635
    const-string/jumbo v4, "In addAppTokenToGenericSSO: appPkgName is null or empty string or token is null"

    .line 3634
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_1
    const/4 v3, -0x3

    return v3

    .line 3632
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3638
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3640
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3641
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3643
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3644
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3645
    const-string/jumbo v3, "GenericSSOService"

    .line 3646
    const-string/jumbo v4, "In addAppTokenToGenericSSO: authenticator is not permitted to call this API"

    .line 3645
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    :cond_3
    const/4 v3, -0x1

    return v3

    .line 3649
    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3
.end method

.method public addUserAndDeviceCertToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "token"    # Lcom/samsung/android/knox/sso/common/TokenInfo;

    .prologue
    .line 3655
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3656
    :cond_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3657
    const-string/jumbo v3, "GenericSSOService"

    .line 3658
    const-string/jumbo v4, "In addUserAndDeviceCertToGenericSSO: token is null or empty"

    .line 3657
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :cond_1
    const/4 v3, -0x3

    return v3

    .line 3661
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3663
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3664
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3666
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3667
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3668
    const-string/jumbo v3, "GenericSSOService"

    .line 3669
    const-string/jumbo v4, "In addUserAndDeviceCertToGenericSSO: authenticator is not permitted to call this API"

    .line 3668
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    :cond_3
    const/4 v3, -0x1

    return v3

    .line 3672
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3
.end method

.method public addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2847
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sso/config/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2848
    if-nez p1, :cond_1

    .line 2849
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2850
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In addWhiteListPackages: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_0
    const/4 v1, -0x3

    return v1

    .line 2853
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2855
    .local v0, "userId":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2733
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sso/config/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2734
    if-nez p1, :cond_1

    .line 2735
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2736
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In addWhiteListPackages2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2739
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[B)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 2710
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2711
    if-nez p1, :cond_1

    .line 2712
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2713
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In configureSSOByFile: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_0
    const/4 v3, -0x3

    return v3

    .line 2716
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 2718
    .local v2, "userId":I
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v0

    .line 2719
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2720
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In configureSSOByFile: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2722
    .local v1, "status":Z
    const-string/jumbo v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In configureSSOByFile: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    .end local v1    # "status":Z
    :goto_0
    return v0

    .line 2725
    :cond_2
    const-string/jumbo v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In configureSSOByFile: Failed to configure file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2863
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2864
    if-nez p1, :cond_1

    .line 2865
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 2866
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: cxtInfo is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_0
    const/4 v11, -0x3

    return v11

    .line 2869
    :cond_1
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2871
    .local v4, "mdmUID":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 2873
    .local v9, "userId":I
    invoke-direct {p0, v9, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2874
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_2

    .line 2875
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: MDM uid is not matched"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_2
    const/16 v11, -0xa

    return v11

    .line 2878
    :cond_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 2879
    :cond_4
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 2880
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: Invalid Parameters."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_5
    const/4 v11, -0x3

    return v11

    .line 2878
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_4

    .line 2883
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    .line 2884
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 2885
    const-string/jumbo v11, "GenericSSOService"

    .line 2886
    const-string/jumbo v12, "In deleteWhiteListPackages: No SSO Vendors have been enrolled."

    .line 2885
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_7
    const/4 v11, -0x6

    return v11

    .line 2890
    :cond_8
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2891
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 2892
    .local v7, "solution":Lorg/w3c/dom/Node;
    if-nez v7, :cond_a

    .line 2893
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 2894
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: this sso vendor is not registered"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_9
    const/4 v11, -0x6

    return v11

    .line 2897
    :cond_a
    const/4 v0, 0x0

    .line 2898
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .local v6, "pack$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2899
    .local v5, "pack":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2901
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string/jumbo v11, "clientpackagename"

    .line 2900
    invoke-direct {p0, v0, v11, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 2902
    .local v10, "whitelistApp":Lorg/w3c/dom/Node;
    if-nez v10, :cond_c

    .line 2903
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_b

    .line 2904
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: the package hasn\'t been whitelisted"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2921
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "pack$iterator":Ljava/util/Iterator;
    .end local v7    # "solution":Lorg/w3c/dom/Node;
    .end local v10    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v3

    .line 2922
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: NullPointerException."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2926
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v11, -0x1

    return v11

    .line 2907
    .restart local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v5    # "pack":Ljava/lang/String;
    .restart local v6    # "pack$iterator":Ljava/util/Iterator;
    .restart local v7    # "solution":Lorg/w3c/dom/Node;
    .restart local v10    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_c
    :try_start_1
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_d

    .line 2908
    const-string/jumbo v11, "GenericSSOService"

    .line 2909
    const-string/jumbo v12, "In deleteWhiteListPackages: package name is found in the whitelist of the given sso ssolution service"

    .line 2908
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_d
    invoke-interface {v7, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2911
    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_b

    .line 2912
    const-string/jumbo v11, "GenericSSOService"

    .line 2913
    const-string/jumbo v12, "In deleteWhiteListPackages: package name is removed from the whitelist of the given sso ssolution service"

    .line 2912
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2923
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "pack$iterator":Ljava/util/Iterator;
    .end local v7    # "solution":Lorg/w3c/dom/Node;
    .end local v10    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 2924
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: Exception."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2916
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v6    # "pack$iterator":Ljava/util/Iterator;
    .restart local v7    # "solution":Lorg/w3c/dom/Node;
    :cond_e
    :try_start_2
    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2917
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In deleteWhiteListPackages: removing whitelistall flag"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v8

    .line 2919
    .local v8, "status":Z
    const-string/jumbo v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "In deleteWhiteListPackages: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2920
    const/4 v11, 0x0

    return v11
.end method

.method public enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;

    .prologue
    .line 2124
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v7, 0x0

    .line 2126
    .local v7, "isRegistered":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2127
    if-nez p1, :cond_1

    .line 2128
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2129
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In enrollSSOVendor: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2133
    :cond_1
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2134
    .local v8, "mdmUid":I
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor: mdmUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2138
    .local v5, "userId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v9

    .line 2139
    .local v9, "ret":I
    if-nez v9, :cond_2

    .line 2140
    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "In enrollSSOVendor: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v10

    .line 2142
    .local v10, "status":Z
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    .end local v10    # "status":Z
    :goto_0
    return v9

    .line 2145
    :cond_2
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In enrollSSOVendor: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enrollSSOVendorInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 2099
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2100
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Need to be system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2102
    :cond_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v8

    .line 2103
    .local v8, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2105
    .local v9, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_2

    .line 2106
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2107
    const-string/jumbo v1, "GenericSSOService"

    .line 2108
    const-string/jumbo v2, "In enrollSSOVendorInternal: there\'s already one sso vendor enrolled so user configuration is rejected."

    .line 2107
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_1
    const/16 v1, -0x9

    return v1

    .line 2111
    :cond_2
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v10

    .line 2112
    .local v10, "ret":I
    if-nez v10, :cond_3

    .line 2113
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In enrollSSOVendorInternal: success in enrolling, whitelisting all apps."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v11

    .line 2115
    .local v11, "status":Z
    const-string/jumbo v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In enrollSSOVendorInternal: return from whitelisting all apps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    .end local v11    # "status":Z
    :cond_3
    return v10
.end method

.method public forceAuthenticate(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3212
    if-nez p1, :cond_1

    .line 3213
    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3214
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In forceAuthenticate: cxtInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_0
    const/4 v8, -0x3

    return v8

    .line 3217
    :cond_1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3220
    .local v1, "mdmUID":I
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3222
    .local v5, "userId":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3223
    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 3224
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In forceAuthenticate: MDM uid is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_2
    const/16 v8, -0xa

    return v8

    .line 3227
    :cond_3
    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 3228
    const-string/jumbo v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "In forceAuthenticate: UserID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3231
    .local v2, "identity":J
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->reAuthenInAuthenticator(I)I

    move-result v4

    .line 3232
    .local v4, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3233
    if-eqz v4, :cond_5

    .line 3234
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In forceAuthenticate: Fail to clear authenticator\'s records"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    const/16 v8, -0x10

    return v8

    .line 3237
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearUserCertAndAppToken(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3241
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3242
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    return v4

    .line 3245
    .end local v2    # "identity":J
    .end local v4    # "ret":I
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 3246
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In forceAuthenticate: Exception"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3248
    const/4 v8, -0x1

    return v8
.end method

.method public getAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3564
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3565
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3566
    const-string/jumbo v3, "GenericSSOService"

    .line 3567
    const-string/jumbo v4, "In getAppTokenFromGenericSSO: appPkgName is null or empty string"

    .line 3566
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_0
    return-object v5

    .line 3570
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3572
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3573
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3574
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3575
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3576
    const-string/jumbo v3, "GenericSSOService"

    .line 3577
    const-string/jumbo v4, "In getAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    .line 3576
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_2
    return-object v5

    .line 3580
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2391
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 703
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need to be system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3712
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 3714
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3715
    .local v10, "pid":I
    const/4 v13, 0x0

    invoke-direct {p0, v10, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v9

    .line 3716
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v12, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 3717
    sget-boolean v13, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 3718
    const-string/jumbo v13, "GenericSSOService"

    .line 3719
    const-string/jumbo v14, "In getCustomerBrandInfo: authenticator is not permitted to call this API"

    .line 3718
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_0
    const/4 v13, 0x0

    return-object v13

    .line 3722
    :cond_1
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 3723
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 3724
    .local v11, "solution":Lorg/w3c/dom/Node;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3725
    .local v7, "customerInfo":Landroid/os/Bundle;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3726
    .local v3, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childNode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3727
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 3728
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 3729
    const-string/jumbo v14, "customerbrand"

    .line 3728
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 3727
    if-eqz v13, :cond_2

    .line 3730
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "configChildNode$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 3731
    .local v4, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v13, "value"

    invoke-direct {p0, v4, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3734
    const-string/jumbo v13, "value"

    .line 3733
    invoke-direct {p0, v4, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 3735
    const/4 v14, 0x0

    .line 3732
    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3737
    .local v0, "byteValue":[B
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 3736
    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3743
    .end local v0    # "byteValue":[B
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNode$iterator":Ljava/util/Iterator;
    .end local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v5    # "configChildNode$iterator":Ljava/util/Iterator;
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "customerInfo":Landroid/os/Bundle;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v12    # "userId":I
    :catch_0
    move-exception v8

    .line 3744
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "GenericSSOService"

    const-string/jumbo v14, "In getCustomerBrandInfo: Exception"

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3746
    const/4 v13, 0x0

    return-object v13

    .line 3742
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "childNode$iterator":Ljava/util/Iterator;
    .restart local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v7    # "customerInfo":Landroid/os/Bundle;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v11    # "solution":Lorg/w3c/dom/Node;
    .restart local v12    # "userId":I
    :cond_4
    return-object v7
.end method

.method public getEnrolledSSOVendor(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2063
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2064
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_0

    .line 2065
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2067
    :cond_0
    return-object v1
.end method

.method public getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2057
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2059
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getToken(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;)V
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "getFromLocalCache"    # Z
    .param p3, "callback"    # Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    .prologue
    .line 4066
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4067
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: Checking networking connection - Failed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    if-eqz p3, :cond_0

    .line 4069
    const/16 v11, -0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4070
    :cond_0
    return-void

    .line 4072
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 4074
    .local v10, "userId":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v2

    .line 4075
    .local v2, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 4076
    .local v8, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v8, :cond_3

    .line 4077
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: the SSO Vendor is not registered"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    if-eqz p3, :cond_2

    .line 4079
    const/4 v11, -0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4080
    :cond_2
    return-void

    .line 4082
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 4083
    .local v7, "pid":I
    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v6

    .line 4084
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4085
    const-string/jumbo v11, "GenericSSOService"

    .line 4086
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "In getToken: cannot find the package name based on the pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4085
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    if-eqz p3, :cond_4

    .line 4089
    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4091
    :cond_4
    return-void

    .line 4094
    :cond_5
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4096
    .local v1, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v7, v6, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 4097
    const-string/jumbo v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "In getToken: the callingApp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "is not permitted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    if-eqz p3, :cond_6

    .line 4099
    const/4 v11, -0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4101
    :cond_6
    return-void

    .line 4103
    :cond_7
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4104
    if-eqz p2, :cond_9

    .line 4105
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromLocalCache(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v9

    .line 4107
    .local v9, "tokenCached":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v9, :cond_9

    .line 4108
    if-eqz p3, :cond_8

    .line 4109
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    .line 4110
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: Getting a token successfully"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_8
    return-void

    .line 4115
    .end local v9    # "tokenCached":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :cond_9
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 4116
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: Fail to pass the service package cert check"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    if-eqz p3, :cond_a

    .line 4118
    const/16 v11, -0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4120
    :cond_a
    return-void

    .line 4125
    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4126
    .local v4, "message":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 4127
    move-object/from16 v0, p3

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4128
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4129
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4064
    .end local v1    # "configData":Landroid/os/Bundle;
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "message":Landroid/os/Message;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pid":I
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "userId":I
    :goto_0
    return-void

    .line 4133
    :catch_0
    move-exception v3

    .line 4134
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: Exception in getToken"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4131
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 4132
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In getToken: null pointer exception in getToken"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3584
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3586
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3587
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3588
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3589
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3590
    const-string/jumbo v3, "GenericSSOService"

    .line 3591
    const-string/jumbo v4, "In getUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    .line 3590
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 3595
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3
.end method

.method public getUserInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;)V
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callback"    # Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    .prologue
    .line 4140
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4141
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In getUserInfo: Checking networking connection - Failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    if-eqz p2, :cond_0

    .line 4143
    const/16 v8, -0xf

    invoke-interface {p2, v8}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4144
    :cond_0
    return-void

    .line 4146
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 4148
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 4149
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 4150
    .local v6, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_3

    .line 4151
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In getUserInfo: the SSO Vendor is not registered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    if-eqz p2, :cond_2

    .line 4153
    const/4 v8, -0x6

    invoke-interface {p2, v8}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4154
    :cond_2
    return-void

    .line 4156
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4157
    .local v5, "pid":I
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    .line 4158
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4160
    .local v0, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v5, v4, v0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4161
    const-string/jumbo v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "In getUserInfo: the callingApp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "is not permitted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    if-eqz p2, :cond_4

    .line 4163
    const/4 v8, -0x7

    invoke-interface {p2, v8}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4165
    :cond_4
    return-void

    .line 4168
    :cond_5
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4169
    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 4170
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In getUserInfo: Fail to pass the service package cert check"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    if-eqz p2, :cond_6

    .line 4172
    const/16 v8, -0xd

    invoke-interface {p2, v8}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 4174
    :cond_6
    return-void

    .line 4177
    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4178
    .local v3, "message":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4179
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4180
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4181
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4182
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In getUserInfo: Getting user info successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4138
    .end local v0    # "configData":Landroid/os/Bundle;
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v6    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v7    # "userId":I
    :goto_0
    return-void

    .line 4183
    :catch_0
    move-exception v2

    .line 4184
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GenericSSOService"

    const-string/jumbo v9, "In getUserInfo: exception in getUserInfo"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 2930
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2932
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 2934
    .local v8, "userId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 2935
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2936
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In getWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_0
    return-object v11

    .line 2940
    :cond_1
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2941
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 2942
    .local v7, "parent":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2943
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    .local v6, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 2945
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 2946
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2947
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "whitelistpackage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2946
    if-eqz v9, :cond_2

    .line 2948
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 2951
    const-string/jumbo v10, "clientpackagename"

    .line 2948
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2955
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_3
    return-object v6

    .line 2958
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "i":I
    .end local v6    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "parent":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 2959
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In getWhiteListPackages: Exception."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2961
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v11

    .line 2956
    :catch_1
    move-exception v3

    .line 2957
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "GenericSSOService"

    const-string/jumbo v10, "In getWhiteListPackages: NullPointerException."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2414
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 4784
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4785
    const-string/jumbo v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Generic SSO service is added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4782
    :goto_0
    return-void

    .line 4786
    :catch_0
    move-exception v0

    .line 4787
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4694
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    .line 4710
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 4711
    const-string/jumbo v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In onAdminRemoved: Admin removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4717
    .local v7, "userId":I
    :try_start_0
    invoke-direct {p0, v7, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 4718
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 4719
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In onAdminRemoved: MDM uid is not matched"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    :cond_1
    return-void

    .line 4724
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v10

    if-eqz v10, :cond_3

    .line 4725
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 4726
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In onAdminRemoved: Fail to clear records remotely"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_3
    const/4 v6, 0x0

    .line 4730
    .local v6, "sendBroadcast":Z
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .line 4731
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_4

    .line 4732
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4734
    const/4 v6, 0x1

    .line 4738
    :cond_4
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 4739
    sget-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 4744
    const/4 v3, 0x0

    .line 4745
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 4746
    .local v4, "filepath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4747
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4748
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4750
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 4751
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4752
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4753
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4756
    :cond_6
    if-nez v7, :cond_7

    .line 4757
    if-eqz v6, :cond_7

    .line 4758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4759
    .local v8, "token":J
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4760
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4764
    .end local v8    # "token":J
    :cond_7
    const/4 v10, 0x0

    sput-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 4765
    const/4 v10, 0x0

    sput-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 4766
    const/4 v10, 0x0

    sput-object v10, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 4771
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4772
    .local v5, "message":Landroid/os/Message;
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 4773
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4775
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4707
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "sendBroadcast":Z
    :goto_0
    return-void

    .line 4778
    :catch_0
    move-exception v1

    .line 4779
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In onAdminRemoved: Exception"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4776
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4777
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v10, "GenericSSOService"

    const-string/jumbo v11, "In onAdminRemoved: SecurityException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4702
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->onAdminRemoved(I)V

    .line 4703
    const-string/jumbo v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pre Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    return-void
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 2386
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public processWebServiceRequest(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
    .locals 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "webServiceRequest"    # Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    .prologue
    .line 4233
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4234
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: Checking networking connection - Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    const/4 v1, 0x0

    return-object v1

    .line 4237
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 4239
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 4240
    .local v10, "pid":I
    const/4 v1, 0x0

    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v9

    .line 4241
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v14, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4243
    .local v4, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v10, v9, v4, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4244
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4245
    const-string/jumbo v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In processWebServiceRequest: the callingApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4246
    const-string/jumbo v3, "is not permitted"

    .line 4245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 4249
    :cond_2
    invoke-direct {p0, v14, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4250
    invoke-direct {p0, v14, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4251
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4252
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: Fail to pass the service package cert check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 4256
    :cond_4
    const-string/jumbo v1, "servicepackagename"

    .line 4255
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 4257
    .local v11, "serviceIntent":Landroid/content/Intent;
    if-nez v11, :cond_6

    .line 4258
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 4259
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 4264
    :cond_6
    invoke-direct {p0, v14, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4266
    invoke-direct {p0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v13

    .line 4267
    .local v13, "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v13, :cond_7

    .line 4268
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const/4 v1, 0x0

    return-object v1

    .line 4272
    :cond_7
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    .line 4274
    const-string/jumbo v1, "servicepackagename"

    .line 4273
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4276
    const-string/jumbo v2, "clientpackagename"

    .line 4275
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4277
    const/4 v3, 0x0

    move-object/from16 v5, p2

    .line 4272
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 4278
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-interface {v13, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireWebService(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;

    move-result-object v12

    .line 4281
    .local v12, "serviceResponse":Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
    if-nez v12, :cond_9

    .line 4282
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 4283
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: Fail to acquire valid service response from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    :cond_8
    const/4 v1, 0x0

    return-object v1

    .line 4286
    :cond_9
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: serviceResponse don\'t have any fault"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4287
    return-object v12

    .line 4292
    .end local v0    # "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "serviceIntent":Landroid/content/Intent;
    .end local v12    # "serviceResponse":Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
    .end local v13    # "ssoService":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .end local v14    # "userId":I
    :catch_0
    move-exception v7

    .line 4293
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: Exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4295
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 4290
    :catch_1
    move-exception v6

    .line 4291
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4288
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 4289
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "GenericSSOService"

    const-string/jumbo v2, "In processWebServiceRequest: null pointer exception in getToken"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3677
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3678
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3679
    const-string/jumbo v3, "GenericSSOService"

    .line 3680
    const-string/jumbo v4, "In removeAppTokenFromGenericSSO: appPkgName is null"

    .line 3679
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3684
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3685
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3686
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3687
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3688
    const-string/jumbo v3, "GenericSSOService"

    .line 3689
    const-string/jumbo v4, "In removeAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    .line 3688
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_1
    const/4 v3, -0x1

    return v3

    .line 3692
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I

    move-result v3

    return v3
.end method

.method public removeUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3696
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 3698
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3699
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3700
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3701
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3702
    const-string/jumbo v3, "GenericSSOService"

    .line 3703
    const-string/jumbo v4, "In removeUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    .line 3702
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_0
    const/4 v3, -0x1

    return v3

    .line 3706
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteUserAndDeviceCertForUser(I)I

    move-result v3

    return v3
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 2396
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;
    .param p2, "containerId"    # I

    .prologue
    .line 2400
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I

    move-result v0

    return v0
.end method

.method public setCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3252
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3253
    if-nez p1, :cond_1

    .line 3254
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 3255
    const-string/jumbo v16, "GenericSSOService"

    const-string/jumbo v17, "In setCustomerBrandInfo: cxtInfo is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_0
    const/16 v16, -0x3

    return v16

    .line 3258
    :cond_1
    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3260
    .local v10, "mdmUID":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 3261
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 3262
    const-string/jumbo v16, "GenericSSOService"

    const-string/jumbo v17, "In setCustomizedBrandingInfo: invalid parameters"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_2
    const/16 v16, -0x3

    return v16

    .line 3266
    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 3268
    .local v14, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v16

    if-nez v16, :cond_5

    .line 3269
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_4

    .line 3270
    const-string/jumbo v16, "GenericSSOService"

    .line 3271
    const-string/jumbo v17, "In setCustomerBrandInfo: MDM uid is not matched"

    .line 3270
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_4
    const/16 v16, -0xa

    return v16

    .line 3274
    :cond_5
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_6

    .line 3275
    const-string/jumbo v16, "GenericSSOService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In setCustomizedBrandingInfo: UserID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_8

    .line 3277
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_7

    .line 3278
    const-string/jumbo v16, "GenericSSOService"

    .line 3279
    const-string/jumbo v17, "In setCustomizedBrandingInfo: No SSO Vendors have been enrolled."

    .line 3278
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_7
    const/16 v16, -0x6

    return v16

    .line 3282
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 3283
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 3284
    .local v12, "solution":Lorg/w3c/dom/Node;
    iget-object v4, v3, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3286
    .local v4, "doc":Lorg/w3c/dom/Document;
    const/4 v2, 0x0

    .line 3288
    .local v2, "brandInfo":Lorg/w3c/dom/Element;
    const-string/jumbo v16, "customerbrand"

    .line 3287
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    check-cast v2, Lorg/w3c/dom/Element;

    .local v2, "brandInfo":Lorg/w3c/dom/Element;
    if-nez v2, :cond_9

    .line 3289
    const-string/jumbo v16, "customerbrand"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 3290
    invoke-interface {v12, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3298
    :cond_9
    const-string/jumbo v16, "customer_brand_logo"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3300
    const-string/jumbo v16, "customer_brand_logo"

    .line 3299
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 3301
    .local v7, "image":[B
    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_a

    .line 3303
    const/16 v16, -0x3

    return v16

    .line 3306
    .end local v7    # "image":[B
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "key$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3307
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 3308
    .local v15, "value":[B
    if-eqz v15, :cond_b

    array-length v0, v15

    move/from16 v16, v0

    if-lez v16, :cond_b

    .line 3309
    const/4 v11, 0x0

    .line 3310
    .local v11, "newNode":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "newNode":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .local v11, "newNode":Lorg/w3c/dom/Element;
    if-nez v11, :cond_c

    .line 3311
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 3312
    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3314
    :cond_c
    new-instance v13, Ljava/lang/String;

    .line 3315
    const/16 v16, 0x2

    .line 3314
    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    .line 3315
    const-string/jumbo v17, "UTF_8"

    .line 3314
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3316
    .local v13, "strValue":Ljava/lang/String;
    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    sget-boolean v16, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v16, :cond_b

    .line 3318
    const-string/jumbo v16, "GenericSSOService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In setCustomizedBrandingInfo:  <"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3319
    const-string/jumbo v18, ":"

    .line 3318
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3319
    const-string/jumbo v18, "> is added"

    .line 3318
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3324
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    .end local v11    # "newNode":Lorg/w3c/dom/Element;
    .end local v12    # "solution":Lorg/w3c/dom/Node;
    .end local v13    # "strValue":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "value":[B
    :catch_0
    move-exception v6

    .line 3325
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v16, "GenericSSOService"

    const-string/jumbo v17, "In setCustomizedBrandingInfo: NullPointerException"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3329
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/16 v16, -0x1

    return v16

    .line 3322
    .restart local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "key$iterator":Ljava/util/Iterator;
    .restart local v12    # "solution":Lorg/w3c/dom/Node;
    .restart local v14    # "userId":I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3323
    const/16 v16, 0x0

    return v16

    .line 3326
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    .end local v12    # "solution":Lorg/w3c/dom/Node;
    .end local v14    # "userId":I
    :catch_1
    move-exception v5

    .line 3327
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "GenericSSOService"

    const-string/jumbo v17, "In setCustomizedBrandingInfo: Exception"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "containerID"    # I
    .param p3, "config"    # Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    .prologue
    .line 2334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2335
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2337
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2338
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2339
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2340
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2341
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2333
    return-void
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authConfig"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 2426
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 4688
    return-void
.end method

.method public unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2510
    if-nez p1, :cond_1

    .line 2511
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2512
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In unenrollSSOVendor: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_0
    const/4 v3, -0x3

    return v3

    .line 2515
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 2517
    .local v2, "userId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2518
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2519
    const-string/jumbo v3, "GenericSSOService"

    const-string/jumbo v4, "In unenrollSSOVendor: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2521
    .local v1, "status":Z
    const-string/jumbo v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In unenrollSSOVendor: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    .end local v1    # "status":Z
    :goto_0
    return v0

    .line 2524
    :cond_2
    const-string/jumbo v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In unenrollSSOVendor: Failed to unenroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2433
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2434
    if-nez p1, :cond_1

    .line 2435
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2436
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In unenrollSSOVendor2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_0
    const/4 v2, -0x3

    return v2

    .line 2439
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2440
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2441
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v3, "In unenrollSSOVendor2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2443
    .local v1, "status":Z
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In unenrollSSOVendor2: return from remove whitelisting all apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    .end local v1    # "status":Z
    :goto_0
    return v0

    .line 2446
    :cond_2
    const-string/jumbo v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In unenrollSSOVendor2: Failed to unenroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2410
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2405
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method
