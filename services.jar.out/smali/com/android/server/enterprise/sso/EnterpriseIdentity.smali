.class public Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;
    }
.end annotation


# static fields
.field private static final AUTH_CONF_DATA_FILENAME:Ljava/lang/String; = "authconfig.xml"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final IS_CONFIGURED_BY_MDM:Ljava/lang/String; = "isConfiguredByMDM"

.field private static final KEYWORD_AUTHPROVIDER:Ljava/lang/String; = "authenticationprovider"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NETWORK_AUTH_FORCE_STATE:Ljava/lang/String; = "network_auth_force_state"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "EnterpriseIdentity"

.field private static final USERAUTHENTICATION:I = 0x4

.field private static final USERX_APPLICATION_DIR:Ljava/lang/String; = "/data/user/"

.field private static authenticationConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isGenericSSOEnrolled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)Z
    .locals 1
    .param p1, "enforce"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 1
    .param p1, "personaID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeFileAndCacheEntry(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 237
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->registerPersonaStateObserver()V

    .line 236
    return-void
.end method

.method private _setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 17
    .param p1, "userId"    # I
    .param p2, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 1269
    const/4 v8, 0x0

    .line 1270
    .local v8, "isRegistered":Z
    const/4 v6, 0x0

    .line 1271
    .local v6, "enrolledEnterpriseIdAuthenticator":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v2

    .line 1272
    .local v2, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1274
    .local v7, "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 1275
    .local v6, "enrolledEnterpriseIdAuthenticator":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 1276
    .local v3, "doc":Lorg/w3c/dom/Document;
    const/4 v11, 0x0

    .line 1277
    .local v11, "newSolution":Lorg/w3c/dom/Element;
    if-nez v7, :cond_9

    .line 1278
    const-string/jumbo v14, "authenticationprovider"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1279
    .local v11, "newSolution":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1281
    const-string/jumbo v14, "servicepackagename"

    .line 1280
    invoke-interface {v11, v14, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1285
    const-string/jumbo v14, "servicepackagesignature"

    .line 1286
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v15

    .line 1284
    invoke-interface {v11, v14, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1289
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v14

    .line 1288
    if-eqz v14, :cond_4

    .line 1290
    const-string/jumbo v14, "EnterpriseIdentity"

    .line 1291
    const-string/jumbo v15, "In _setAuthenticationConfig: Incorrect configuration. Both hide and enforce set to true."

    .line 1290
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string/jumbo v14, "hideEnterpriseIDLock"

    const-string/jumbo v15, "false"

    .line 1292
    invoke-interface {v11, v14, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :goto_0
    const-string/jumbo v15, "forceEnterpriseIDLock"

    .line 1301
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "true"

    .line 1299
    :goto_1
    invoke-interface {v11, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v15, "enforceRemoteAuthAlways"

    .line 1305
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "true"

    .line 1303
    :goto_2
    invoke-interface {v11, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string/jumbo v15, "isConfiguredByMDM"

    .line 1308
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "true"

    .line 1306
    :goto_3
    invoke-interface {v11, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In _setAuthenticationConfig Authenticator:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "servicepackagename"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In _setAuthenticationConfig FORCE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "forceEnterpriseIDLock"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In _setAuthenticationConfig HIDE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "hideEnterpriseIDLock"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In _setAuthenticationConfig ENFORCE_REMOTEALWAYS:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "enforceRemoteAuthAlways"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In _setAuthenticationConfig IS_CONFIGURED_BY_MDM:  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "isConfiguredByMDM"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .end local v11    # "newSolution":Lorg/w3c/dom/Element;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v13

    .line 1358
    .local v13, "requestConfig":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 1359
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1362
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Key = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    sget-object v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1364
    sget-object v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1363
    if-nez v14, :cond_2

    .line 1365
    sget-object v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1363
    if-nez v14, :cond_2

    .line 1368
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1369
    const/4 v12, 0x0

    .line 1371
    .local v12, "node":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    .end local v12    # "node":Lorg/w3c/dom/Element;
    check-cast v12, Lorg/w3c/dom/Element;

    .line 1373
    .local v12, "node":Lorg/w3c/dom/Element;
    if-nez v12, :cond_3

    .line 1374
    iget-object v14, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v14, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1375
    if-nez v8, :cond_11

    .line 1376
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1380
    :cond_3
    :goto_6
    const-string/jumbo v14, "value"

    .line 1381
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1380
    invoke-interface {v12, v14, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    sget-boolean v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 1384
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In setAuthenticationConfig:  <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1385
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1384
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1386
    const-string/jumbo v16, "> parameter for - packageName "

    .line 1384
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1387
    const-string/jumbo v16, " is added"

    .line 1384
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1399
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "enrolledEnterpriseIdAuthenticator":Ljava/lang/String;
    .end local v7    # "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v12    # "node":Lorg/w3c/dom/Element;
    .end local v13    # "requestConfig":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 1400
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1402
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7
    const/4 v14, 0x0

    return v14

    .line 1296
    .restart local v2    # "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "enrolledEnterpriseIdAuthenticator":Ljava/lang/String;
    .restart local v7    # "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    .restart local v11    # "newSolution":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    const-string/jumbo v15, "hideEnterpriseIDLock"

    .line 1297
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "true"

    .line 1295
    :goto_8
    invoke-interface {v11, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1298
    :cond_5
    const-string/jumbo v14, "false"

    goto :goto_8

    .line 1302
    :cond_6
    const-string/jumbo v14, "false"

    goto/16 :goto_1

    .line 1305
    :cond_7
    const-string/jumbo v14, "false"

    goto/16 :goto_2

    .line 1308
    :cond_8
    const-string/jumbo v14, "false"

    goto/16 :goto_3

    .line 1320
    .local v11, "newSolution":Lorg/w3c/dom/Element;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeAll(Lorg/w3c/dom/Node;)V

    .line 1321
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 1322
    .local v5, "e":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1324
    const-string/jumbo v14, "servicepackagename"

    .line 1323
    invoke-interface {v5, v14, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 1328
    const-string/jumbo v14, "servicepackagesignature"

    .line 1329
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v15

    .line 1327
    invoke-interface {v5, v14, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1331
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v14

    .line 1330
    if-eqz v14, :cond_c

    .line 1332
    const-string/jumbo v14, "EnterpriseIdentity"

    .line 1333
    const-string/jumbo v15, "In setAuthenticationConfig when node not null: Incorrect configuration. Both hide and enforce set to true."

    .line 1332
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string/jumbo v14, "hideEnterpriseIDLock"

    const-string/jumbo v15, "false"

    .line 1334
    invoke-interface {v5, v14, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :goto_9
    const-string/jumbo v15, "forceEnterpriseIDLock"

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_e

    const-string/jumbo v14, "true"

    .line 1341
    :goto_a
    invoke-interface {v5, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string/jumbo v15, "enforceRemoteAuthAlways"

    .line 1346
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v14

    if-eqz v14, :cond_f

    const-string/jumbo v14, "true"

    .line 1345
    :goto_b
    invoke-interface {v5, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v15, "isConfiguredByMDM"

    .line 1348
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v14

    if-eqz v14, :cond_10

    const-string/jumbo v14, "true"

    .line 1347
    :goto_c
    invoke-interface {v5, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 1338
    :cond_c
    const-string/jumbo v15, "hideEnterpriseIDLock"

    .line 1339
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string/jumbo v14, "true"

    .line 1337
    :goto_d
    invoke-interface {v5, v15, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1340
    :cond_d
    const-string/jumbo v14, "false"

    goto :goto_d

    .line 1344
    :cond_e
    const-string/jumbo v14, "false"

    goto :goto_a

    .line 1346
    :cond_f
    const-string/jumbo v14, "false"

    goto :goto_b

    .line 1348
    :cond_10
    const-string/jumbo v14, "false"

    goto :goto_c

    .line 1378
    .end local v5    # "e":Lorg/w3c/dom/Element;
    .end local v11    # "newSolution":Lorg/w3c/dom/Element;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "key$iterator":Ljava/util/Iterator;
    .restart local v12    # "node":Lorg/w3c/dom/Element;
    .restart local v13    # "requestConfig":Landroid/os/Bundle;
    :cond_11
    invoke-interface {v7, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_6

    .line 1392
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v12    # "node":Lorg/w3c/dom/Element;
    :cond_12
    if-nez v8, :cond_13

    .line 1393
    iget-object v14, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v14}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14, v11}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1394
    :cond_13
    iget-object v14, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Element;->normalize()V

    .line 1395
    const/16 v14, 0x64

    move/from16 v0, p1

    if-lt v0, v14, :cond_14

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto/16 :goto_7

    .line 1398
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method private bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 807
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;-><init>(I)V

    .line 808
    .local v0, "connection":Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 809
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 810
    const-string/jumbo v6, "EnterpriseIdentity"

    .line 811
    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: The EnterpriseIdService is already bound"

    .line 810
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    return-object v6

    .line 816
    :cond_1
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 819
    const-string/jumbo v7, ".genericssoconnection"

    .line 818
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 821
    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 822
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 821
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    sget-object v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 824
    :try_start_1
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: Binding to the service..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 826
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x1

    .line 825
    invoke-virtual {v6, v5, v0, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 828
    :try_start_2
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 829
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 831
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 830
    const-wide/16 v10, 0x4e20

    .line 829
    invoke-virtual {v6, v10, v11, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 832
    .local v1, "countDownTimeout":Z
    if-nez v1, :cond_3

    .line 833
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 834
    const-string/jumbo v6, "EnterpriseIdentity"

    .line 835
    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: CoutnDownLatch return false"

    .line 834
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "countDownTimeout":Z
    :cond_3
    :goto_0
    :try_start_3
    monitor-exit v7

    .line 845
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    return-object v6

    .line 837
    :catch_0
    move-exception v3

    .line 838
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: InterruptedException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 823
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 846
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 847
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: NullPointerException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-object v12

    .line 842
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_6
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: Fail to bind to sso service"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 848
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 849
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 564
    const-string/jumbo v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    .line 563
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 569
    const-string/jumbo v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    .line 568
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 930
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 931
    :cond_0
    return-object v8

    .line 934
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 935
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 937
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 938
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 939
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 938
    if-eqz v6, :cond_2

    .line 940
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 943
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 944
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 946
    :cond_4
    return-object v8

    .line 949
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In existedNode: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 947
    :catch_1
    move-exception v2

    .line 948
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In existedNode: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "attirbuteName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 915
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 917
    :cond_0
    return-object v1

    .line 916
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 797
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

    .line 798
    const-string/jumbo v1, "authconfig.xml"

    .line 797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 715
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    .line 717
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In getAuthConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    return-object v3
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

    .line 889
    if-nez p1, :cond_0

    .line 890
    return-object v8

    .line 892
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 893
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 896
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 897
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 898
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 901
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-object v5

    .line 904
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 902
    :catch_1
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "EnterpriseIdentity"

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

    .line 861
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 862
    :cond_0
    return-object v8

    .line 865
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 866
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 868
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 869
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 870
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 869
    if-eqz v6, :cond_2

    .line 871
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_3
    return-object v5

    .line 877
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 875
    :catch_1
    move-exception v2

    .line 876
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 578
    const-string/jumbo v1, "enterprise_policy_new"

    .line 577
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v10, 0x0

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v1

    .line 642
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 644
    .local v2, "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    .line 645
    const-string/jumbo v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In getEnterpriseIdAuthenticationConfig: enterpriseId authenticator is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-object v10

    .line 648
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v6, "ret":Landroid/os/Bundle;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 651
    .local v4, "list":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 652
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 653
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 651
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    :cond_2
    const-string/jumbo v7, "value"

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 656
    .local v5, "mNode":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_1

    .line 657
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 660
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v5    # "mNode":Lorg/w3c/dom/Node;
    :cond_3
    return-object v6
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 538
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    if-nez v2, :cond_0

    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 540
    .local v0, "token":J
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "EnterpriseIdentity"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 541
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 542
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    .line 543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    .end local v0    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    return-object v2
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 610
    const/4 v3, 0x0

    .line 611
    .local v3, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 613
    .local v8, "token":J
    :try_start_0
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 614
    const-string/jumbo v7, "EnterpriseIdentity"

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

    .line 616
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 615
    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    .line 618
    .local v1, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v7, 0x40

    .line 617
    invoke-virtual {v1, p2, v7, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 619
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 620
    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    return-object v12

    .line 623
    :cond_1
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 624
    .local v6, "signs":[Landroid/content/pm/Signature;
    const/4 v7, 0x0

    array-length v10, v6

    :goto_0
    if-ge v7, v10, :cond_2

    aget-object v5, v6, v7

    .line 625
    .local v5, "sign":Landroid/content/pm/Signature;
    if-eqz v5, :cond_3

    .line 626
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 635
    .end local v3    # "pkgCert":Ljava/lang/String;
    .end local v5    # "sign":Landroid/content/pm/Signature;
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    .end local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :goto_1
    return-object v3

    .line 624
    .restart local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v3    # "pkgCert":Ljava/lang/String;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "sign":Landroid/content/pm/Signature;
    .restart local v6    # "signs":[Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 632
    .end local v1    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "sign":Landroid/content/pm/Signature;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: Exception"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 631
    .local v2, "npe":Ljava/lang/NullPointerException;
    :try_start_3
    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v7, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 634
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    .line 635
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    throw v7
.end method

.method private getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 3
    .param p1, "personaID"    # I

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 551
    const-string/jumbo v2, "persona"

    .line 550
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 552
    .local v0, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v1

    return-object v1
.end method

.method private getSSOPolicy()Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .locals 5

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 229
    .local v2, "ssoPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :try_start_0
    const-string/jumbo v3, "enterprise_user_space_sso_policy"

    .line 228
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v2    # "ssoPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :goto_0
    return-object v2

    .line 230
    .restart local v2    # "ssoPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v4, "Exception in getSSOService"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    if-nez v1, :cond_0

    .line 217
    :try_start_0
    const-string/jumbo v1, "genericssoservice"

    .line 216
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService;

    iput-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "Exception in getSSOService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserAuthenticationInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserId()I
    .locals 5

    .prologue
    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 729
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 730
    .local v1, "userId":I
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 731
    const-string/jumbo v2, "EnterpriseIdentity"

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

    .line 732
    :cond_0
    return v1
.end method

.method private initAuthenticationConfigDoc(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 665
    const/4 v8, 0x0

    .line 666
    .local v8, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v6

    .line 667
    .local v6, "filepath":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 669
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 671
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 673
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 674
    :cond_0
    const-string/jumbo v10, "EnterpriseIdentity"

    .line 675
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In initAuthenticationConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 677
    const-string/jumbo v12, ", an empty config file is created"

    .line 675
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 674
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 679
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v10, "configuration"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 680
    .local v7, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 681
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 683
    new-instance v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v10, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 682
    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 691
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-boolean v10, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 692
    const-string/jumbo v10, "EnterpriseIdentity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 693
    const-string/jumbo v12, " is loaded with auth details for userId "

    .line 692
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

    .line 703
    :cond_1
    if-eqz v8, :cond_2

    .line 704
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_2
    :goto_1
    return-void

    .line 685
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 687
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    .line 688
    sget-object v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    .line 689
    new-instance v11, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v11, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 688
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

    .line 706
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 707
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 699
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 700
    .local v5, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_4
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: SAXException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 703
    if-eqz v8, :cond_2

    .line 704
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 706
    :catch_2
    move-exception v3

    .line 707
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 697
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v4

    .line 698
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: ParserConfigurationException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 703
    if-eqz v8, :cond_2

    .line 704
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 706
    :catch_4
    move-exception v3

    .line 707
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 695
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v3

    .line 696
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 703
    if-eqz v8, :cond_2

    .line 704
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 706
    :catch_6
    move-exception v3

    .line 707
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 701
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 703
    :goto_5
    if-eqz v8, :cond_4

    .line 704
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 701
    :cond_4
    :goto_6
    throw v10

    .line 706
    :catch_7
    move-exception v3

    .line 707
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 701
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

    .line 695
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 697
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

    .line 699
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

.method private isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1096
    const-string/jumbo v1, "application_policy"

    .line 1095
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1097
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v0, :cond_0

    .line 1098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1099
    .local v2, "token":J
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    const/4 v1, 0x1

    return v1

    .line 1105
    .end local v2    # "token":J
    :cond_0
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v4, "In isAuthenticatorApplicationInstalled: Authenticator is not installed"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v1, 0x0

    return v1
.end method

.method private isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "enterpriseSSOResponseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<*>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOPolicy()Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isSSOReadyInUserSpace(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v1

    .line 399
    .local v1, "enterpriseSSOResponseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<*>;"
    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_0

    .line 401
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v4, "In isEnterpriseSSOEnrolled: Enterprise SSO is enrolled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 403
    .local v2, "result":Z
    return v2

    .line 405
    .end local v2    # "result":Z
    :cond_0
    return v6

    .line 408
    .end local v1    # "enterpriseSSOResponseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<*>;"
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v4, "Exception in isEnterpriseSSOEnrolled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v6
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 802
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isGenericSSOEnrolled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In isGenericSSOEnrolled: Generic SSO is enrolled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v2, 0x1

    return v2

    .line 389
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "Exception in isSSOEnrolled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isNetworkAuthenticationEnforced(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1550
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1551
    const-string/jumbo v4, "network_auth_force_state"

    const/4 v5, 0x0

    .line 1550
    invoke-static {v1, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1551
    const/4 v4, 0x1

    .line 1550
    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 1552
    .local v0, "ret":Z
    :goto_0
    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In isNetworkAuthenticationEnforced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    return v0

    .line 1550
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/os/Bundle;

    .prologue
    .line 590
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_1
    return v1
.end method

.method private registerPersonaStateObserver()V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 248
    const-string/jumbo v3, "persona"

    .line 247
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 249
    .local v1, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeAll(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1257
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1258
    .local v1, "list":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1261
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1262
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private removeFileAndCacheEntry(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "filepath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 418
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 419
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v4, "In removeFileAndCacheEntry: file is not removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 422
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 424
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 426
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    const-string/jumbo v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In removeFileAndCacheEntry: Cache and file removed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 15
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 764
    const/4 v8, 0x0

    .line 765
    .local v8, "stream":Ljava/io/FileOutputStream;
    sget-object v13, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    monitor-enter v13

    .line 767
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 769
    .local v11, "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 771
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

    .line 772
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 773
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    if-nez p1, :cond_0

    .line 774
    :try_start_1
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v7}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 778
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_0
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 779
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v10, v7, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 780
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In saveConfigToFile: config file is saved successfully"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
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

    .line 763
    return-void

    .line 776
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

    .line 790
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 791
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: IOException"

    invoke-static {v12, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 765
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    monitor-exit v13

    throw v12

    .line 788
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 789
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_4
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 786
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 787
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v12, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 784
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 785
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v5, "e":Ljavax/xml/transform/TransformerException;
    :goto_6
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 782
    .end local v5    # "e":Ljavax/xml/transform/TransformerException;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    .line 783
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_7
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 765
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

    .line 782
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 784
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

    .line 786
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

    .line 788
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

    .line 790
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

.method private setNetworkAuthenticationEnforced(ZI)Z
    .locals 6
    .param p1, "enforce"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1525
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1526
    const-string/jumbo v5, "network_auth_force_state"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1525
    :goto_0
    invoke-static {v4, v5, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 1527
    .local v0, "status":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    return v0

    .line 1526
    .end local v0    # "status":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 738
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 739
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 741
    const-string/jumbo v0, "EnterpriseIdentity"

    const-string/jumbo v1, "In updateCache: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 749
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 750
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 752
    const-string/jumbo v1, "EnterpriseIdentity"

    .line 753
    const-string/jumbo v2, "In updateCacheAndFile: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    .line 752
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 757
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 758
    const-string/jumbo v1, "EnterpriseIdentity"

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In updateCacheAndFile: updated sso authentication config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 760
    const-string/jumbo v3, " for userId "

    .line 759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_1
    return-void
.end method


# virtual methods
.method public getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 1128
    const/4 v7, 0x0

    .line 1129
    .local v7, "authenticatorConfig":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 1131
    .local v11, "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v8

    .line 1132
    .local v8, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    if-nez v8, :cond_0

    .line 1133
    const-string/jumbo v14, "EnterpriseIdentity"

    .line 1134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In getAuthenticationConfig: cannot get configDoc for userID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1133
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v14, 0x0

    return-object v14

    .line 1139
    :cond_0
    :try_start_0
    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 1141
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v5

    .line 1142
    .local v5, "authenticatorPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1143
    const/4 v5, 0x0

    .line 1144
    .end local v5    # "authenticatorPkgName":Ljava/lang/String;
    :cond_1
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    .line 1147
    .local v10, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v14, "servicepackagesignature"

    .line 1146
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1148
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: SSO_PROVIDER_PACKAGE_SIGNATURE=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v6, 0x0

    .line 1157
    :goto_0
    const-string/jumbo v14, "enforceRemoteAuthAlways"

    .line 1156
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1158
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. ENFORCE_REMOTE_AUTH_ALWAYS=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v2, 0x0

    .line 1167
    .local v2, "enforceRemoteAuthAlways":Z
    :goto_1
    const-string/jumbo v14, "forceEnterpriseIDLock"

    .line 1166
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1168
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. FORCE_ENTERPRISE_IDENTITY_LOCK=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v3, 0x0

    .line 1177
    .local v3, "forceEnterpriseIdentityLock":Z
    :goto_2
    const-string/jumbo v14, "hideEnterpriseIDLock"

    .line 1176
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1178
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. HIDE_ENTERPRISE_ID_LOCK=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v4, 0x0

    .line 1187
    .local v4, "hideEnterpriseIdentityLock":Z
    :goto_3
    const-string/jumbo v14, "isConfiguredByMDM"

    .line 1186
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1188
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. isConfiguredByMDM=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v12, 0x0

    .line 1196
    .local v12, "isConfiguredByMDM":Z
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v7

    .line 1198
    .local v7, "authenticatorConfig":Landroid/os/Bundle;
    new-instance v1, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    .end local v11    # "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    .local v1, "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    :try_start_1
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In getAuthenticationConfig: RemoteAuthAlways: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1203
    const-string/jumbo v16, "forceEnterpriseID: "

    .line 1202
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1204
    const-string/jumbo v16, "hideEnterpriseID: "

    .line 1202
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1205
    const-string/jumbo v16, "Authenticator: "

    .line 1202
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {v1, v12}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1207
    return-object v1

    .line 1153
    .end local v1    # "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    .end local v2    # "enforceRemoteAuthAlways":Z
    .end local v3    # "forceEnterpriseIdentityLock":Z
    .end local v4    # "hideEnterpriseIdentityLock":Z
    .end local v12    # "isConfiguredByMDM":Z
    .local v7, "authenticatorConfig":Landroid/os/Bundle;
    .restart local v11    # "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    :cond_2
    :try_start_2
    const-string/jumbo v14, "servicepackagesignature"

    .line 1152
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "authenticatorPkgSignature":Ljava/lang/String;
    goto/16 :goto_0

    .line 1162
    .end local v6    # "authenticatorPkgSignature":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "enforceRemoteAuthAlways"

    .line 1161
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1163
    const-string/jumbo v15, "true"

    .line 1161
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1163
    const/4 v2, 0x1

    .restart local v2    # "enforceRemoteAuthAlways":Z
    goto/16 :goto_1

    .end local v2    # "enforceRemoteAuthAlways":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "enforceRemoteAuthAlways":Z
    goto/16 :goto_1

    .line 1172
    :cond_5
    const-string/jumbo v14, "forceEnterpriseIDLock"

    .line 1171
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1173
    const-string/jumbo v15, "true"

    .line 1171
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1173
    const/4 v3, 0x1

    .restart local v3    # "forceEnterpriseIdentityLock":Z
    goto/16 :goto_2

    .end local v3    # "forceEnterpriseIdentityLock":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "forceEnterpriseIdentityLock":Z
    goto/16 :goto_2

    .line 1182
    :cond_7
    const-string/jumbo v14, "hideEnterpriseIDLock"

    .line 1181
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1183
    const-string/jumbo v15, "true"

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1183
    const/4 v4, 0x1

    .restart local v4    # "hideEnterpriseIdentityLock":Z
    goto/16 :goto_3

    .end local v4    # "hideEnterpriseIdentityLock":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "hideEnterpriseIdentityLock":Z
    goto/16 :goto_3

    .line 1192
    :cond_9
    const-string/jumbo v14, "isConfiguredByMDM"

    .line 1191
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1193
    const-string/jumbo v15, "true"

    .line 1191
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v14

    if-eqz v14, :cond_a

    .line 1193
    const/4 v12, 0x1

    .restart local v12    # "isConfiguredByMDM":Z
    goto/16 :goto_4

    .end local v12    # "isConfiguredByMDM":Z
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "isConfiguredByMDM":Z
    goto/16 :goto_4

    .line 1208
    .end local v2    # "enforceRemoteAuthAlways":Z
    .end local v3    # "forceEnterpriseIdentityLock":Z
    .end local v4    # "hideEnterpriseIdentityLock":Z
    .end local v7    # "authenticatorConfig":Landroid/os/Bundle;
    .end local v10    # "e":Lorg/w3c/dom/Element;
    .end local v12    # "isConfiguredByMDM":Z
    .end local v13    # "node":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v1, v11

    .line 1209
    .end local v11    # "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    .restart local v1    # "eIDLockConfigObj":Lcom/samsung/android/knox/container/AuthenticationConfig;
    :goto_5
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Exception"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    const/4 v14, 0x0

    return-object v14

    .line 1208
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "enforceRemoteAuthAlways":Z
    .restart local v3    # "forceEnterpriseIdentityLock":Z
    .restart local v4    # "hideEnterpriseIdentityLock":Z
    .local v7, "authenticatorConfig":Landroid/os/Bundle;
    .restart local v10    # "e":Lorg/w3c/dom/Element;
    .restart local v12    # "isConfiguredByMDM":Z
    .restart local v13    # "node":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1113
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1115
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v1

    return-object v1
.end method

.method public getEnterpriseIdAuthenticator(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    .line 923
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 926
    :cond_0
    return-object v1
.end method

.method public getUnEnrollSetting(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 597
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 598
    .local v2, "unEnrolled":Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return v2

    .line 597
    .end local v2    # "unEnrolled":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "unEnrolled":Z
    goto :goto_0
.end method

.method public installPackageInContainer(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    .line 436
    .local v1, "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 439
    .local v2, "retValue":I
    return v2

    .line 440
    .end local v1    # "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v2    # "retValue":I
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v4, "In installPackageInContainer: Exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const/4 v3, -0x1

    return v3
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 1533
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1535
    :cond_0
    const/4 v0, 0x0

    .line 1536
    .local v0, "ret":Z
    if-nez p1, :cond_2

    .line 1537
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1538
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In isNetworkAuthenticationEnforced: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_1
    return v0

    .line 1542
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1544
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    return v2
.end method

.method public onAdminRemoved(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    const/4 v9, 0x0

    .line 1643
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In OnAdminRemoved: uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1645
    .local v5, "userId":I
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In OnAdminRemoved: userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1647
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Need to be system process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1649
    :cond_2
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1650
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 1649
    invoke-direct {v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1651
    .local v1, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1652
    .local v0, "adminUid":I
    if-ne p1, v0, :cond_6

    .line 1653
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In OnAdminRemoved: Correct admin = all config is removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 1655
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1656
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1657
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1659
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1663
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1664
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 1663
    invoke-static {v6, v7, v9, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1666
    :cond_5
    if-nez v5, :cond_6

    .line 1667
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1669
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1670
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 1671
    .local v4, "result":Z
    if-nez v4, :cond_6

    .line 1672
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 1673
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In onAdminRemoved : file is not removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "result":Z
    :cond_6
    return-void
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    const/4 v4, 0x0

    .line 956
    const/4 v11, 0x0

    .line 957
    .local v11, "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 958
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 963
    .local v12, "userId":I
    if-nez p2, :cond_1

    .line 964
    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In performUserAuthentication: Performing user authentication is failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-object v11

    .line 967
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v10

    .line 968
    .local v10, "packageName":Ljava/lang/String;
    invoke-direct {p0, v12, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 970
    .local v9, "installedAppPkgSig":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 971
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 972
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 973
    const-string/jumbo v1, "EnterpriseIdentity"

    .line 974
    const-string/jumbo v2, "In performUserAuthentication: Authenticator signature is not matched"

    .line 973
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_2
    new-instance v11, Lcom/samsung/android/knox/sso/common/TokenInfo;

    .end local v11    # "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    invoke-direct {v11}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    .line 978
    .local v11, "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    sget-object v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    .line 979
    const/16 v2, -0xd

    .line 976
    invoke-virtual {v11, v1, v2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Ljava/lang/String;I)V

    .line 980
    return-object v11

    .line 983
    .local v11, "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :cond_3
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 984
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: calling _setAuthenticationConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_4
    invoke-direct {p0, v12, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    .line 986
    invoke-direct {p0, v12, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    .line 988
    .local v6, "authenticator":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    const/4 v11, 0x0

    .line 989
    if-nez v6, :cond_5

    .line 990
    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In performUserAuthentication: The authenticator is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return-object v4

    .line 995
    :cond_5
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 996
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    .line 997
    const/16 v1, 0x64

    if-lt v12, v1, :cond_6

    .line 998
    invoke-virtual {p0, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 999
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    .line 1002
    :cond_6
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    .line 1003
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v1

    .line 1004
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v4

    .line 1003
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1004
    const/4 v5, 0x0

    .line 1002
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 1005
    .local v0, "authRequest":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-interface {v6, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v11

    .line 1007
    .local v11, "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v11, :cond_7

    .line 1008
    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1009
    sget-object v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    .line 1008
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_7

    .line 1023
    .end local v0    # "authRequest":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    .end local v11    # "retTokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :cond_7
    :goto_0
    return-object v11

    .line 1020
    :catch_0
    move-exception v8

    .line 1021
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1018
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1019
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: RemoteException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 1216
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1217
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1223
    .local v3, "userId":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 1224
    const-string/jumbo v4, "EnterpriseIdentity"

    const-string/jumbo v5, "Enterprise Identity not supported on device level "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v4, -0x2

    return v4

    .line 1227
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1228
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1230
    const-string/jumbo v0, "com.sec.android.service.singlesignon"

    .line 1231
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1232
    const/4 v4, -0x4

    return v4

    .line 1235
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "packageSignature":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v2

    .line 1237
    .local v2, "requestedSignature":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 1238
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1239
    const-string/jumbo v4, "EnterpriseIdentity"

    const-string/jumbo v5, "Enterprise Identity requested signature is different from IdP signature"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/16 v4, -0xd

    return v4

    .line 1245
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packageSignature":Ljava/lang/String;
    .end local v2    # "requestedSignature":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v4

    return v4
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .locals 2
    .param p1, "request"    # Lcom/samsung/android/knox/container/AuthenticationConfig;
    .param p2, "containerId"    # I

    .prologue
    .line 1250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setUnEnrollSetting(ZI)V
    .locals 5
    .param p1, "setValue"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 604
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 605
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 604
    :goto_0
    invoke-static {v3, v4, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    return-void

    .line 605
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "authConfig"    # Lcom/samsung/android/knox/container/AuthenticationConfig;

    .prologue
    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1031
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 1033
    .local v7, "userId":I
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1034
    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setUpdatedAuthenticationConfig : UserID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_1
    if-nez p2, :cond_2

    .line 1037
    const/4 v2, 0x0

    return v2

    .line 1039
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v11

    .line 1040
    .local v11, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    invoke-direct {v2, v11, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 1042
    const/16 v2, 0x64

    if-lt v7, v2, :cond_9

    .line 1044
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V

    .line 1045
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    invoke-static {v2, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V

    .line 1048
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v12

    .line 1049
    .local v12, "requestConfig":Landroid/os/Bundle;
    if-eqz v12, :cond_3

    .line 1050
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1051
    const-string/jumbo v3, "FEDERATION_SERVER_URL"

    .line 1050
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    if-eqz v2, :cond_3

    .line 1053
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 1055
    const-string/jumbo v2, "FEDERATION_SERVER_URL"

    .line 1054
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 1053
    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V

    .line 1057
    :cond_3
    const/16 v2, 0x64

    if-lt v7, v2, :cond_7

    .line 1059
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    iget-boolean v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    if-eqz v2, :cond_6

    .line 1060
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In setUpdatedAuthenticationConfig: SSO is configured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v10, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 1061
    invoke-direct {v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1063
    .local v10, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v8

    .line 1065
    .local v8, "adminUid":I
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1066
    const-string/jumbo v2, "EnterpriseIdentity"

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setUpdatedAuthenticationConfig: authenticationInfoManager.isSSOConfigurationEnabled = true adminUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1070
    .local v14, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v2

    .line 1071
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-direct {v3, v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    .line 1070
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendorInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    .line 1075
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1076
    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setUpdatedAuthenticationConfig packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    .end local v8    # "adminUid":I
    .end local v10    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v14    # "token":J
    :cond_6
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 1081
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1082
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z

    .line 1084
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    .line 1089
    const/4 v2, 0x1

    return v2

    .line 1047
    .end local v12    # "requestConfig":Landroid/os/Bundle;
    :cond_9
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1085
    .end local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1086
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1087
    const/4 v2, 0x0

    return v2

    .line 1054
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "requestConfig":Landroid/os/Bundle;
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    .line 1492
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1494
    :cond_0
    if-nez p1, :cond_2

    .line 1495
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1496
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In validateUserAuthentication: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1
    return-void

    .line 1499
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 1500
    .local v7, "userId":I
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1501
    const-string/jumbo v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateUserAuthentication: contextInfo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1504
    :cond_4
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In validateUserAuthentication: Usernames or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return-void

    .line 1508
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1509
    .local v4, "authData":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 1516
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1517
    .local v6, "message":Landroid/os/Message;
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 1518
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1519
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1520
    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    .line 1430
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1432
    :cond_0
    const/4 v8, 0x0

    .line 1433
    .local v8, "retFromAuthenticator":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-nez p1, :cond_2

    .line 1434
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1435
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: cxtInfo is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_1
    return-object v2

    .line 1438
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1439
    :cond_3
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: Usernames or password is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-object v2

    .line 1443
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1446
    .local v9, "userId":I
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1448
    .local v4, "authData":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    .line 1454
    .local v0, "request":Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    .line 1456
    .local v6, "authenticator":Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    if-nez v6, :cond_5

    .line 1457
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: The authenticator value is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-object v2

    .line 1461
    :cond_5
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1462
    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->getRequestConfig()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    .line 1463
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    .line 1465
    :cond_6
    invoke-interface {v6, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v8

    .line 1466
    .local v8, "retFromAuthenticator":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v8, :cond_7

    .line 1467
    invoke-virtual {v8}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 1472
    .local v10, "userInformationBundle":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    .line 1471
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 1473
    const/4 v2, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    .end local v8    # "retFromAuthenticator":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .end local v10    # "userInformationBundle":Landroid/os/Bundle;
    :cond_7
    :goto_0
    return-object v8

    .line 1483
    :catch_0
    move-exception v7

    .line 1484
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In performExchangeAuthentication: RemoteException"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
