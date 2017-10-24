.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ACTION_ENFORCE_LOCKTYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BAI_PCSCLITE_SERVICE:Ljava/lang/String; = "com.baimobile.android.pcsclite.service"

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_AGENT"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_INTENT_LEGACY:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KEYGUARD_ATTRIBUTE_CONTAINER_OWNER:Ljava/lang/String; = "container_owner"

.field private static final KEYGUARD_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final KEYGUARD_ATTRIBUTE_OWNER:Ljava/lang/String; = "owner"

.field private static final KNOX_UCM_ESE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE"

.field private static final KNOX_UCM_ESE_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_ESE"

.field private static final KNOX_UCM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN"

.field private static final KNOX_UCM_PLUGIN_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final OLD_SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.sec.smartcard.manager"

.field private static final SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.samsung.ucm.baiplugin"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCM_CREDENTIAL_STORAGE_NAME:Ljava/lang/String; = "lockscreen.ucscredentialstoragename"

.field private static final UCM_ENCRYPTION_CHECK_PROPERTY:Ljava/lang/String; = "ro.boot.ucs_mode"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_ID:I = 0x1f40

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSystemReadyCalled:Z

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field protected mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private final mServicesLock:Ljava/lang/Object;

.field private mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

.field private needToBindESE:Z

.field private systemPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private test_status_for_ode:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPCSCService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemUCMPlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMPlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceLockType(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UCM_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;-><init>()V

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "com.samsung.ucm.baiplugin"

    aput-object v8, v7, v9

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemPlugins:Ljava/util/ArrayList;

    .line 138
    iput-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 153
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 158
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 159
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 160
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 161
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 162
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 163
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 167
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    .line 170
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 171
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    .line 172
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 174
    iput-boolean v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    .line 175
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 180
    iput-boolean v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    .line 403
    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-direct {v6, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v6, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 3599
    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 202
    new-instance v6, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 203
    new-instance v6, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 204
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 205
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 206
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 207
    .local v1, "dataDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "system"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v5, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "registered_ucm_services"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v4, "syncDir":Ljava/io/File;
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "com.samsung.ucm.agent.xml"

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    .line 210
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/system"

    const-string/jumbo v9, "appletsConfig.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 211
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 213
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v7, "CredentialManagerServiceThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    .line 214
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v3, "locktypeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3, v10, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .local v0, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0, v10, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 282
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v6, "package"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;

    invoke-direct {v7, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 315
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 288
    invoke-virtual {v6, v7, v2, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 321
    const-string/jumbo v6, "ro.crypto.state"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unencrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 322
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_reset_main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 321
    if-eqz v6, :cond_2

    .line 324
    :cond_0
    const-string/jumbo v6, "persist.security.ucs"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "ro.boot.ucs_mode"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 329
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    .line 332
    :cond_2
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string/jumbo v7, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string/jumbo v7, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string/jumbo v7, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V

    .line 199
    return-void

    .line 317
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7
.end method

.method private applyMDMPolicies(ZIILjava/lang/String;I)Z
    .locals 25
    .param p1, "apply"    # Z
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "pluginPkg"    # Ljava/lang/String;
    .param p5, "configuratorId"    # I

    .prologue
    .line 4064
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies adminUid-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", userId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pluginPkg-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", apply-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    const/16 v18, 0x0

    .line 4066
    .local v18, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4068
    .local v10, "id":J
    if-eqz p3, :cond_0

    const/16 v20, 0x64

    move/from16 v0, p3

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 4069
    :cond_0
    :try_start_0
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v8, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 4070
    .local v8, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_a

    if-eqz p2, :cond_a

    if-eqz p4, :cond_a

    .line 4071
    const/4 v12, 0x0

    .line 4072
    .local v12, "isBYODContainer":Z
    const/4 v13, 0x0

    .line 4073
    .local v13, "isContainer":Z
    const/16 v20, 0x64

    move/from16 v0, p3

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 4074
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4075
    .local v5, "adminUserId":I
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies adminUserId -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    const/4 v12, 0x1

    .line 4077
    :goto_0
    const/4 v13, 0x1

    .line 4079
    .end local v5    # "adminUserId":I
    :cond_1
    if-eqz p1, :cond_b

    .line 4080
    const/16 v19, 0x0

    .line 4081
    .local v19, "status":Z
    if-nez v12, :cond_7

    .line 4082
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4083
    .local v15, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 4085
    .local v4, "adminPkg":[Ljava/lang/String;
    if-nez v13, :cond_3

    .line 4086
    if-eqz v4, :cond_3

    .line 4087
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v17, v4, v20

    .line 4088
    .local v17, "pkg":Ljava/lang/String;
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies admin pkg -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4087
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 4076
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v19    # "status":Z
    .restart local v5    # "adminUserId":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 4093
    .end local v5    # "adminUserId":I
    .restart local v4    # "adminPkg":[Ljava/lang/String;
    .restart local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "status":Z
    :cond_3
    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4094
    const-string/jumbo v20, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 4095
    const-string/jumbo v20, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4097
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 4099
    .local v16, "packages":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4100
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies addPackagesToForceStopBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    const/16 v19, 0x0

    .line 4103
    .local v19, "status":Z
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4104
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies addPackagesToClearCacheBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    const/16 v19, 0x0

    .line 4107
    .local v19, "status":Z
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4108
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies addPackagesToClearDataBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    if-nez v13, :cond_6

    .line 4111
    if-eqz v4, :cond_5

    .line 4112
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v17, v4, v20

    .line 4113
    .restart local v17    # "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v19

    .line 4114
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 4112
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 4119
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    .line 4122
    .end local v19    # "status":Z
    :cond_6
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 4123
    const-string/jumbo v20, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 4125
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    const-string/jumbo v21, "com.baimobile.android.pcsclite.service"

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 4128
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "packages":[Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_9

    const/16 v20, -0x1

    move/from16 v0, p5

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 4129
    const-string/jumbo v20, "UcmService"

    const-string/jumbo v21, "applyMDMPolicies inside container logic"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4131
    .restart local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 4132
    .local v9, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v14

    .line 4133
    .local v14, "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v14, :cond_9

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 4135
    .local v6, "configuratorPkg":[Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 4136
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget-object v17, v6, v20

    .line 4137
    .restart local v17    # "pkg":Ljava/lang/String;
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 4140
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4136
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 4144
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_8
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 4146
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4147
    .restart local v19    # "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container addPackagesToForceStopBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    const/16 v19, 0x0

    .line 4150
    .local v19, "status":Z
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4151
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container addPackagesToClearCacheBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    const/16 v19, 0x0

    .line 4154
    .local v19, "status":Z
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4155
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container addPackagesToClearDataBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4159
    .end local v6    # "configuratorPkg":[Ljava/lang/String;
    .end local v9    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v14    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "status":Z
    :cond_9
    const/16 v18, 0x1

    .line 4247
    .end local v8    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v12    # "isBYODContainer":Z
    .end local v13    # "isContainer":Z
    :cond_a
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4249
    :goto_5
    return v18

    .line 4161
    .restart local v8    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v12    # "isBYODContainer":Z
    .restart local v13    # "isContainer":Z
    :cond_b
    const/16 v19, 0x0

    .line 4162
    .local v19, "status":Z
    if-nez v12, :cond_10

    .line 4163
    :try_start_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4164
    .restart local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 4165
    .restart local v4    # "adminPkg":[Ljava/lang/String;
    if-nez v13, :cond_c

    .line 4166
    if-eqz v4, :cond_c

    .line 4167
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v17, v4, v20

    .line 4168
    .restart local v17    # "pkg":Ljava/lang/String;
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies admin pkg -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4167
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 4173
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4174
    const-string/jumbo v20, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 4175
    const-string/jumbo v20, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4177
    :cond_d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 4179
    .restart local v16    # "packages":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4180
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    const/16 v19, 0x0

    .line 4183
    .local v19, "status":Z
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4184
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    const/16 v19, 0x0

    .line 4187
    .local v19, "status":Z
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4188
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    const/16 v19, 0x0

    .line 4190
    .local v19, "status":Z
    if-nez v13, :cond_f

    .line 4191
    if-eqz v4, :cond_e

    .line 4192
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    .end local v19    # "status":Z
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    aget-object v17, v4, v20

    .line 4194
    .restart local v17    # "pkg":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v19

    .line 4195
    .local v19, "status":Z
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4192
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 4200
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v19    # "status":Z
    :cond_e
    const/16 v19, 0x0

    .line 4203
    .local v19, "status":Z
    :cond_f
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4204
    const-string/jumbo v20, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 4206
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v20

    const-string/jumbo v21, "com.baimobile.android.pcsclite.service"

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4209
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "packages":[Ljava/lang/String;
    :cond_10
    if-eqz v13, :cond_12

    const/16 v20, -0x1

    move/from16 v0, p5

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 4210
    const-string/jumbo v20, "UcmService"

    const-string/jumbo v21, "applyMDMPolicies inside container logic"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4212
    .restart local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 4213
    .restart local v9    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v14

    .line 4214
    .restart local v14    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 4215
    .restart local v6    # "configuratorPkg":[Ljava/lang/String;
    if-eqz v14, :cond_12

    .line 4216
    if-eqz v6, :cond_11

    .line 4217
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    aget-object v17, v6, v20

    .line 4218
    .restart local v17    # "pkg":Ljava/lang/String;
    const-string/jumbo v22, "UcmService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4221
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4217
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 4225
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_11
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_12

    .line 4226
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4227
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container removePackagesFromForceStopBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    const/16 v19, 0x0

    .line 4230
    .local v19, "status":Z
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4231
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container removePackagesFromClearCacheBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    const/16 v19, 0x0

    .line 4234
    .local v19, "status":Z
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v19

    .line 4235
    .local v19, "status":Z
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies inside container removePackagesFromClearDataBlackList status-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4239
    .end local v6    # "configuratorPkg":[Ljava/lang/String;
    .end local v9    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v14    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "status":Z
    :cond_12
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 4244
    .end local v8    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v12    # "isBYODContainer":Z
    .end local v13    # "isContainer":Z
    :catch_0
    move-exception v7

    .line 4245
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "applyMDMPolicies exception"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4247
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    .line 4246
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 4247
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4246
    throw v20
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .prologue
    .line 5163
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5164
    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "actualPackage":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "actualPackage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 606
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string/jumbo v1, "CredentialManagerService"

    .line 608
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_0

    .line 609
    return v5

    .line 611
    :cond_0
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string/jumbo v3, "] trying to access methodName ["

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string/jumbo v3, "] in ["

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string/jumbo v3, "] service"

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 616
    throw v0

    .line 618
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    return v5
.end method

.method private checkESEPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1682
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "checkESEPermission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    :cond_0
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "packagename is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return v3

    .line 1687
    :cond_1
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1688
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_ESE"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1689
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_PLUGIN_PERMISSION_LEGACY is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return v4

    .line 1691
    :cond_2
    const-string/jumbo v1, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1692
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_ESE_PERMISSION_LEGACY is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    return v4

    .line 1696
    :cond_3
    return v3
.end method

.method private checkESEPermissionInstalledMDM()V
    .locals 10

    .prologue
    .line 368
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v7, :cond_3

    .line 369
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    .local v2, "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 372
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 373
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 374
    .local v6, "intAdminUid":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 372
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 378
    .local v1, "adminUid":I
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "check eSE Permission : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 380
    .local v3, "compName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "adminPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermission(Ljava/lang/String;)Z

    move-result v4

    .line 389
    .local v4, "existESEPermission":Z
    if-eqz v4, :cond_2

    .line 390
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "ESE Permission exist 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    .line 394
    :cond_2
    iget-boolean v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    if-eqz v7, :cond_0

    .line 367
    .end local v0    # "adminPackageName":Ljava/lang/String;
    .end local v1    # "adminUid":I
    .end local v2    # "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "compName":Landroid/content/ComponentName;
    .end local v4    # "existESEPermission":Z
    .end local v5    # "i":I
    .end local v6    # "intAdminUid":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 1387
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 1388
    .local v0, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 1389
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1390
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 1391
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkIfNotify for cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 1398
    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_3

    .line 1399
    const-string/jumbo v8, "UcmService"

    const-string/jumbo v9, "notifying to managed plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1401
    .local v2, "mUm":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 1403
    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .line 1404
    .local v3, "notify":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v3    # "notify":Z
    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1405
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 1406
    .local v4, "userId":I
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v4, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    .line 1408
    .local v3, "notify":Z
    if-eqz v3, :cond_0

    .line 1411
    .end local v3    # "notify":Z
    .end local v4    # "userId":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return v3

    .line 1393
    .end local v1    # "enforceManagement":Z
    .end local v2    # "mUm":Landroid/os/UserManager;
    .end local v6    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const-string/jumbo v8, "UcmService"

    const-string/jumbo v9, "Package name for CS found NULL. Cannot notify."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v8, 0x0

    return v8

    .line 1413
    .restart local v1    # "enforceManagement":Z
    :cond_3
    const-string/jumbo v8, "UcmService"

    const-string/jumbo v9, "notifying to unmanaged plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v8, 0x1

    return v8
.end method

.method private checkPluginUsed(ILjava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 3505
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPluginUsed for the uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPluginUsed for the uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    .line 3508
    .local v1, "keyguardCSName":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3509
    .local v2, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3517
    :cond_0
    const-string/jumbo v3, "persist.security.ucs.csname"

    const-string/jumbo v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3518
    .local v0, "ODECSName":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 3519
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3520
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "This plugin is already used in ODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    return v6

    .line 3509
    .end local v0    # "ODECSName":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_0

    .line 3510
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3511
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "This plugin is already used in keyguard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    return v6

    .line 3524
    .restart local v0    # "ODECSName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    .line 5156
    const-string/jumbo v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5157
    .local v0, "actual":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5158
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5155
    :cond_0
    return-void
.end method

.method private compareCallingPkg([B[B)Z
    .locals 16
    .param p1, "storedPkg"    # [B
    .param p2, "callingPkg"    # [B

    .prologue
    .line 4610
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "compareCallingPkg is called..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    const/4 v8, 0x0

    .line 4613
    .local v8, "status":Z
    :try_start_0
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 4614
    .local v5, "configuratorPackage":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4615
    .local v4, "confPkgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 4616
    .local v2, "callingPackages":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4618
    .local v3, "callingPkgs":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v11, v3

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, v3, v10

    .line 4619
    .local v7, "pkg":Ljava/lang/String;
    const-string/jumbo v9, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "compareCallingPkg pkg - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    const/4 v9, 0x0

    array-length v12, v4

    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v1, v4, v9

    .line 4621
    .local v1, "cachePkg":Ljava/lang/String;
    const-string/jumbo v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "compareCallingPkg cachePkg -"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4623
    const/4 v8, 0x1

    .line 4624
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v12, "compareCallingPkg match found..."

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4618
    .end local v1    # "cachePkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 4620
    .restart local v1    # "cachePkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4629
    .end local v1    # "cachePkg":Ljava/lang/String;
    .end local v2    # "callingPackages":Ljava/lang/String;
    .end local v3    # "callingPkgs":[Ljava/lang/String;
    .end local v4    # "confPkgs":[Ljava/lang/String;
    .end local v5    # "configuratorPackage":Ljava/lang/String;
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4630
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in getConfiguratorPkg -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    return v8
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 569
    if-nez p0, :cond_0

    .line 570
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v5, "Signature s1 is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v4

    .line 573
    :cond_0
    if-nez p1, :cond_1

    .line 574
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v5, "Signature s2 is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v4

    .line 578
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 579
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, p0, v3

    .line 580
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 583
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p1, v3

    .line 584
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 587
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "  Signature match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v3, 0x1

    return v3

    .line 591
    :cond_4
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v5, "  Signature doesn\'t match"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v4
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1127
    const-string/jumbo v1, ""

    .line 1128
    .local v1, "byteString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1129
    return-object v2

    .line 1131
    :cond_0
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v0, p1, v2

    .line 1132
    .local v0, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    .end local v0    # "b":B
    :cond_1
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "convertByteToString result - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-object v1
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2868
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2870
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2871
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2872
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2874
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2875
    return-object v10

    .line 2879
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2881
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 2882
    .local v15, "uriuid":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    .line 2883
    if-eq v5, v15, :cond_2

    .line 2884
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2885
    :cond_1
    move v5, v15

    .line 2889
    :cond_2
    if-eqz p2, :cond_5

    move/from16 v4, p3

    .line 2890
    .local v4, "user_id":I
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    .line 2891
    .local v14, "uriresource":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_3

    const/4 v14, 0x1

    .line 2893
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2894
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v16

    .line 2895
    .local v16, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_6

    .line 2896
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2897
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delete new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    .end local v16    # "userId":I
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2904
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 2905
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2907
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2908
    return-object v10

    .line 2889
    .end local v4    # "user_id":I
    .end local v12    # "id":J
    .end local v14    # "uriresource":I
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .restart local v4    # "user_id":I
    goto/16 :goto_0

    .line 2899
    .restart local v14    # "uriresource":I
    .restart local v16    # "userId":I
    :cond_6
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delete. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2910
    .end local v16    # "userId":I
    .restart local v12    # "id":J
    :cond_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2913
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2914
    .local v11, "argBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_8

    const-string/jumbo v2, "ismdm"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2915
    :cond_8
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2916
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2917
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2918
    const-string/jumbo v2, "resource"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2920
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2927
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2929
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2930
    return-object v10

    .line 2932
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    .prologue
    .line 4778
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "deleteODEConfigInFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 4781
    .local v0, "existFile":Z
    if-nez v0, :cond_0

    .line 4782
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :goto_0
    return-void

    .line 4784
    :cond_0
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private enforceLockType(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 5269
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5270
    .local v2, "uh":Landroid/os/UserHandle;
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enforceLockType called for userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5272
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.ConfirmUCMLockPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5273
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " csName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    const-string/jumbo v3, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5275
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5276
    const/high16 v3, 0x400000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5277
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5278
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5267
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uh":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 5279
    :catch_0
    move-exception v0

    .line 5280
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "handled expected Exception in enforceLockType()."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enforcePermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforcePermission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    :cond_0
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "packagename is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v4

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 504
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 505
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_PLUGIN_PERMISSION_LEGACY is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v5

    .line 507
    :cond_2
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 508
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v5

    .line 512
    :cond_3
    return v4
.end method

.method private enforceUidPermission(I)Z
    .locals 6
    .param p1, "Uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 516
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforceUidPermission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 519
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_PLUGIN_PERMISSION_LEGACY is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v5

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 523
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v5

    .line 527
    :cond_1
    return v4
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2974
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2976
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2977
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2978
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2980
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2981
    return-object v10

    .line 2985
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2986
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2987
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 2988
    .local v15, "uriuid":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    .line 2989
    if-eq v5, v15, :cond_2

    .line 2990
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2991
    :cond_1
    move v5, v15

    .line 2995
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2996
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    .line 2997
    .local v14, "uriresource":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_3

    const/4 v14, 0x1

    .line 2999
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3000
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v16

    .line 3001
    .local v16, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    .line 3002
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 3003
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    .end local v16    # "userId":I
    :cond_4
    :goto_0
    if-nez p5, :cond_7

    .line 3011
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3012
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 3013
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3015
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3016
    return-object v10

    .line 3005
    .end local v12    # "id":J
    .restart local v16    # "userId":I
    :cond_5
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3018
    .end local v16    # "userId":I
    .restart local v12    # "id":J
    :cond_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    .end local v12    # "id":J
    :cond_7
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3024
    .local v11, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3025
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3026
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3027
    const-string/jumbo v2, "resource"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3028
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3030
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3037
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3039
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3040
    return-object v10

    .line 3042
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2636
    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 2637
    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_6

    .line 2638
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    :cond_4
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "storageType"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    :cond_5
    const-string/jumbo v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2645
    const-string/jumbo v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2646
    const-string/jumbo v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2647
    const-string/jumbo v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2648
    const-string/jumbo v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2649
    const-string/jumbo v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2650
    const-string/jumbo v2, "isPUKSupported"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2651
    const-string/jumbo v2, "isGeneratePasswordAvailable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2652
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :cond_6
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    .line 2655
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2656
    const-string/jumbo v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    :cond_7
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 5
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1054
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo is called for pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1057
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_0

    .line 1060
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-object v0

    .line 1069
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_0
    return-object v4
.end method

.method private getConfiguratorPkg(I)[B
    .locals 8
    .param p1, "adminId"    # I

    .prologue
    .line 4636
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    const/4 v0, 0x0

    .line 4639
    .local v0, "data":[B
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 4640
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 4641
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4642
    .local v4, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 4643
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4645
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 4646
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4642
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4649
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4650
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4651
    .local v0, "data":[B
    if-eqz v0, :cond_2

    .line 4652
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4658
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_1
    return-object v0

    .line 4655
    :catch_0
    move-exception v1

    .line 4656
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in getConfiguratorPkg -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConfiguratorSignature(I)[B
    .locals 11
    .param p1, "adminId"    # I

    .prologue
    .line 4662
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    const/4 v0, 0x0

    .line 4665
    .local v0, "data":[B
    :try_start_0
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 4666
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 4667
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-ge v2, v8, :cond_1

    .line 4668
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packageName -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    const-string/jumbo v6, ""

    .line 4670
    .local v6, "sig":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    aget-object v9, v4, v2

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 4671
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-lez v8, :cond_3

    .line 4672
    const-string/jumbo v8, "UcmService"

    const-string/jumbo v9, "Found signature..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    new-array v7, v8, [Ljava/lang/String;

    .line 4674
    .local v7, "sigStrins":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 4675
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 4674
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4677
    :cond_0
    const-string/jumbo v8, ","

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4679
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    .line 4683
    .end local v0    # "data":[B
    .end local v3    # "j":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    .end local v7    # "sigStrins":[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 4684
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data size -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4690
    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .line 4667
    .restart local v0    # "data":[B
    .restart local v2    # "i":I
    .restart local v4    # "packageNames":[Ljava/lang/String;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sig":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4687
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4688
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getConfiguratorPkg -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDigestOfBytes([B)[B
    .locals 14
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v13, 0x0

    .line 4695
    const/4 v5, 0x0

    .line 4696
    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 4697
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 4699
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string/jumbo v12, "SHA256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 4700
    .local v11, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4701
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v2, v11}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4702
    .local v6, "dis":Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v5    # "dis":Ljava/security/DigestInputStream;
    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4704
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 4705
    .local v0, "b":I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    .line 4708
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v12

    .line 4719
    if-eqz v6, :cond_1

    .line 4720
    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_1
    if-eqz v4, :cond_2

    .line 4722
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_2
    if-eqz v2, :cond_3

    .line 4724
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4708
    :cond_3
    :goto_0
    return-object v12

    .line 4725
    :catch_0
    move-exception v8

    .line 4726
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4715
    .end local v0    # "b":I
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_1
    move-exception v9

    .line 4716
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4719
    if-eqz v5, :cond_4

    .line 4720
    :try_start_6
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_4
    if-eqz v3, :cond_5

    .line 4722
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_5
    if-eqz v1, :cond_6

    .line 4724
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4729
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return-object v13

    .line 4725
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 4726
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4713
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_3
    move-exception v8

    .line 4714
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4719
    if-eqz v5, :cond_7

    .line 4720
    :try_start_8
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_7
    if-eqz v3, :cond_8

    .line 4722
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_8
    if-eqz v1, :cond_6

    .line 4724
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 4725
    :catch_4
    move-exception v8

    .line 4726
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4711
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_5
    move-exception v7

    .line 4712
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4719
    if-eqz v5, :cond_9

    .line 4720
    :try_start_a
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_9
    if-eqz v3, :cond_a

    .line 4722
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_a
    if-eqz v1, :cond_6

    .line 4724
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 4725
    :catch_6
    move-exception v8

    .line 4726
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4709
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_7
    move-exception v10

    .line 4710
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v10, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    :try_start_b
    invoke-virtual {v10}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4719
    if-eqz v5, :cond_b

    .line 4720
    :try_start_c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_b
    if-eqz v3, :cond_c

    .line 4722
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_c
    if-eqz v1, :cond_6

    .line 4724
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 4725
    :catch_8
    move-exception v8

    .line 4726
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4717
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v12

    .line 4719
    :goto_6
    if-eqz v5, :cond_d

    .line 4720
    :try_start_d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4721
    :cond_d
    if-eqz v3, :cond_e

    .line 4722
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4723
    :cond_e
    if-eqz v1, :cond_f

    .line 4724
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 4717
    :cond_f
    :goto_7
    throw v12

    .line 4725
    :catch_9
    move-exception v8

    .line 4726
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 4717
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v11    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_3
    move-exception v12

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .line 4709
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    :catch_a
    move-exception v10

    .restart local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_b
    move-exception v10

    .restart local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_c
    move-exception v10

    .restart local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .line 4711
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_e
    move-exception v7

    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    goto :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_f
    move-exception v7

    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_4

    .line 4713
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    :catch_10
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_11
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_12
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3

    .line 4715
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    :catch_13
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_14
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .local v5, "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_15
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_1
.end method

.method private getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    .locals 16
    .param p1, "userId"    # I

    .prologue
    .line 4008
    const-string/jumbo v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getKeyguardStorageOwnerForCurrentUser : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 4010
    .local v1, "dataDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string/jumbo v13, "system"

    invoke-direct {v10, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4011
    .local v10, "systemDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "users/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4012
    .local v12, "userDir":Ljava/io/File;
    new-instance v13, Landroid/util/AtomicFile;

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "ucm_keyguardconfig.xml"

    invoke-direct {v14, v12, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v13, v14}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 4013
    const/4 v6, 0x0

    .line 4014
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 4015
    .local v7, "isFileExist":Z
    const/4 v8, 0x0

    .line 4016
    .local v8, "ownerId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v7

    .line 4017
    .local v7, "isFileExist":Z
    const-string/jumbo v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isFileExist : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    if-nez v7, :cond_0

    .line 4019
    const/4 v13, 0x0

    return-object v13

    .line 4022
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 4023
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 4024
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v9, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4025
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 4026
    .local v5, "eventType":I
    :goto_0
    const/4 v13, 0x2

    if-eq v5, v13, :cond_1

    const/4 v13, 0x1

    if-eq v5, v13, :cond_1

    .line 4027
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 4029
    :cond_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 4030
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "keyguard"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4031
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 4033
    .end local v8    # "ownerId":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x2

    if-ne v5, v13, :cond_3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 4034
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 4035
    const-string/jumbo v13, "vendor"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 4036
    const-string/jumbo v13, "owner"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4039
    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 4040
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    .line 4052
    :cond_4
    if-eqz v6, :cond_5

    .line 4054
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4060
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v8

    .line 4055
    .restart local v5    # "eventType":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 4056
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4048
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 4050
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4052
    if-eqz v6, :cond_5

    .line 4054
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 4055
    :catch_2
    move-exception v3

    .line 4056
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4045
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 4047
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4052
    if-eqz v6, :cond_5

    .line 4054
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 4055
    :catch_4
    move-exception v3

    .line 4056
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4042
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v2

    .line 4044
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4052
    if-eqz v6, :cond_5

    .line 4054
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 4055
    :catch_6
    move-exception v3

    .line 4056
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4051
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 4052
    if-eqz v6, :cond_6

    .line 4054
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 4051
    :cond_6
    :goto_2
    throw v13

    .line 4055
    :catch_7
    move-exception v3

    .line 4056
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .prologue
    .line 3046
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3047
    .local v1, "errorcode":I
    const-string/jumbo v2, "bytearrayresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3048
    .local v0, "data":[B
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "storageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4292
    if-eqz p1, :cond_0

    .line 4293
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4294
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 4295
    aget-object v1, v0, v3

    return-object v1

    .line 4298
    .end local v0    # "pkgs":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 191
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 184
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getuseridforuid(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 2089
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2090
    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 1139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1140
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 1141
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1142
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 1143
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1142
    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1144
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1146
    :cond_0
    return-object v0
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2768
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2771
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2772
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2773
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2775
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2776
    return-object v10

    .line 2778
    :cond_0
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "agent= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2783
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 2784
    .local v15, "uriuid":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_1

    .line 2785
    if-eq v5, v15, :cond_1

    .line 2786
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 2787
    move v5, v15

    .line 2791
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2792
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    .line 2793
    .local v14, "uriresource":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_2

    const/4 v14, 0x1

    .line 2795
    :cond_2
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2796
    .local v11, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ismdm"

    move/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2798
    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    .line 2799
    const-string/jumbo v2, "callerUid"

    const-string/jumbo v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2800
    const-string/jumbo v2, "ownerUid"

    const-string/jumbo v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2801
    const-string/jumbo v2, "renew"

    const-string/jumbo v3, "renew"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2803
    const-string/jumbo v2, "allow_wifi"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2804
    const-string/jumbo v2, "resource"

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2808
    :goto_0
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userd id from MDM = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "user_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2810
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2818
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2819
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2820
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2822
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2823
    return-object v10

    .line 2806
    .end local v12    # "id":J
    :cond_3
    const-string/jumbo v2, "resource"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2812
    :cond_4
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2813
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2814
    const-string/jumbo v2, "resource"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2815
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2825
    .restart local v12    # "id":J
    :cond_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2828
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2835
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2837
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2838
    return-object v10

    .line 2840
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private isCallFromSystem(I)Z
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    .line 5179
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCallFromSystem adminUid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    const/4 v3, 0x0

    .line 5182
    .local v3, "status":Z
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5183
    .local v4, "userId":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 5184
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5185
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 5186
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5188
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "isCallFromSystem match found...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5189
    const/4 v3, 0x1

    .line 5197
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_0
    :goto_1
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCallFromSystem status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    return v3

    .line 5185
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    .restart local v4    # "userId":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5194
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v4    # "userId":I
    :catch_0
    move-exception v0

    .line 5195
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCallFromSystem e-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPCSCService(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 456
    const/4 v3, 0x0

    .line 458
    .local v3, "status":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 460
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 461
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPCSCService pkgName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v6, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 463
    const/4 v3, 0x1

    .line 472
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 460
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPCSCService exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPackageExisted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 598
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x1

    return v3

    .line 599
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    return v3
.end method

.method private static isPersona(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 3592
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 3593
    const/4 v0, 0x1

    return v0

    .line 3595
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;II)Z
    .locals 12
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "currentUserId"    # I
    .param p3, "configuratorId"    # I

    .prologue
    .line 751
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "isPluginUsedInOtherUser"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz p1, :cond_0

    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 753
    :cond_0
    const/4 v9, 0x0

    return v9

    .line 752
    :cond_1
    const/4 v9, -0x1

    if-eq p3, v9, :cond_0

    .line 756
    :try_start_0
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 757
    .local v2, "mUm":Landroid/os/UserManager;
    if-nez v2, :cond_2

    .line 758
    const/4 v9, 0x0

    return v9

    .line 760
    :cond_2
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 761
    .local v8, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v8, :cond_3

    .line 762
    const/4 v9, 0x0

    return v9

    .line 764
    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 765
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_4

    .line 767
    const-string/jumbo v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UCM keyguard check "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v9, :cond_6

    .line 770
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "skip current user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    .end local v2    # "mUm":Landroid/os/UserManager;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPluginUsed exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v9, 0x0

    return v9

    .line 774
    .restart local v2    # "mUm":Landroid/os/UserManager;
    .restart local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v8    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    :try_start_1
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, "usedVendorName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 776
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "UCM keyguard is not enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_7
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 781
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "this plugin is used in other user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 783
    .local v3, "usedConfigurator":Ljava/lang/String;
    const/4 v4, -0x1

    .line 785
    .local v4, "usedConfiguratorId":I
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 790
    if-ne p3, v4, :cond_4

    .line 791
    :try_start_3
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "And it is enabled by same configurator"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 793
    const/4 v9, 0x1

    return v9

    .line 786
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 552
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 553
    const/16 v6, 0x40

    .line 552
    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 555
    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 556
    const-string/jumbo v6, "android"

    const/16 v7, 0x40

    .line 555
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 558
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    return v4

    .line 562
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e1":Ljava/lang/Exception;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemApp exception e -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v4

    .line 559
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 560
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemApp exception e -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v4
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string/jumbo v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemUCMPlugin(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 435
    const/4 v3, 0x0

    .line 437
    .local v3, "status":Z
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 439
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 440
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSystemUCMPlugin pkgName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemPlugins:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "isSystemUCMPlugin match found...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v3, 0x1

    .line 452
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 439
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSystemUCMPlugin exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isUCMKeyguardEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "keyguardUsed":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Keyguard is enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x1

    return v1

    .line 355
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUCMODEEnabled()Z
    .locals 3

    .prologue
    .line 340
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "ro.boot.ucs_mode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "UCM ODE is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_0
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "UCM ODE is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method private isUCMPlugin(I)Z
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 476
    const/4 v4, 0x0

    .line 478
    .local v4, "status":Z
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 480
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 481
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 482
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUCMPlugin pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforcePermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 484
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "isUCMPlugin match found...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v4, 0x1

    .line 494
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return v4

    .line 481
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isUCMPlugin exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "status":Z
    if-eqz p1, :cond_1

    .line 1033
    const-string/jumbo v1, "eSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    :cond_0
    const/4 v0, 0x1

    .line 1048
    :cond_1
    :goto_0
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v0

    .line 1033
    :cond_2
    const-string/jumbo v1, "eSE1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SIM1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SIM2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SD1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidMsgType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1724
    const/4 v0, 0x0

    .line 1726
    :goto_0
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return v0

    .line 1721
    :pswitch_0
    const/4 v0, 0x1

    .line 1722
    goto :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4
    .param p1, "protocolType"    # I

    .prologue
    .line 1700
    const/4 v0, 0x0

    .line 1701
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1709
    const/4 v0, 0x0

    .line 1711
    :goto_0
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    return v0

    .line 1706
    :pswitch_0
    const/4 v0, 0x1

    .line 1707
    goto :goto_0

    .line 1701
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidVendorName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 672
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3151
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3153
    .local v4, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "agent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3154
    .local v0, "agent":Landroid/os/Bundle;
    const-string/jumbo v5, "uniqueId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3155
    .local v3, "cs_id":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3156
    :cond_0
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3159
    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3160
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3163
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3165
    .end local v0    # "agent":Landroid/os/Bundle;
    .end local v3    # "cs_id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    return-object v5
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 12
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3170
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 3171
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3172
    return-object v5

    .line 3174
    :cond_0
    const-string/jumbo v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listProviders "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, " for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, " and ismdmcaller-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3176
    .local v7, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3177
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    .line 3181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3182
    .local v10, "id":J
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3183
    const-string/jumbo v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3188
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v8

    .line 3189
    .local v8, "cs":Landroid/os/Bundle;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3191
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3193
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v8    # "cs":Landroid/os/Bundle;
    .end local v10    # "id":J
    :cond_3
    const-string/jumbo v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listProviders filtered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1072
    const-string/jumbo v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", uri-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v7, 0x1

    .line 1075
    .local v7, "status":Z
    if-eqz p3, :cond_1

    .line 1076
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, "pluginName":Ljava/lang/String;
    const-string/jumbo v1, "applet_location"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "appletLocation":Ljava/lang/String;
    const-string/jumbo v1, "applet_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1079
    .local v3, "aid":[B
    const-string/jumbo v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1082
    const-string/jumbo v1, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string/jumbo v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1108
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v7

    .line 1088
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1089
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    :cond_3
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 1092
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1093
    const-string/jumbo v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1105
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1106
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1099
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 1100
    const/4 v7, 0x0

    .line 1101
    :try_start_1
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 22

    .prologue
    .line 1189
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v20, "readPersistentAppletsInfoLocked is called..."

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v15, 0x0

    .line 1193
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1194
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v20, "readPersistentAppletsInfoLocked mPersistentAppletInfoFile not exist..."

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1198
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v15

    .line 1200
    .local v15, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 1201
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1202
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .line 1203
    .local v14, "eventType":I
    :goto_0
    const/4 v3, 0x2

    if-eq v14, v3, :cond_1

    .line 1204
    const/4 v3, 0x1

    if-eq v14, v3, :cond_1

    .line 1205
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    goto :goto_0

    .line 1207
    :cond_1
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1208
    .local v18, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "applets"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1209
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 1211
    :cond_2
    const/4 v3, 0x2

    if-ne v14, v3, :cond_4

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_4

    .line 1212
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1213
    const-string/jumbo v3, "applet"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1215
    const-string/jumbo v3, "pluginName"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1216
    .local v6, "pluginName":Ljava/lang/String;
    const-string/jumbo v3, "appletLocation"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1217
    .local v4, "appletLocation":Ljava/lang/String;
    const-string/jumbo v3, "adminId"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1218
    .local v8, "adminId":Ljava/lang/String;
    const-string/jumbo v3, "aid"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1220
    .local v9, "aid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1221
    .local v7, "admin":I
    const/4 v5, 0x0

    .line 1222
    .local v5, "aidByte":[B
    if-eqz v9, :cond_3

    .line 1223
    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1225
    .end local v5    # "aidByte":[B
    :cond_3
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 1226
    .local v2, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .end local v2    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v4    # "appletLocation":Ljava/lang/String;
    .end local v6    # "pluginName":Ljava/lang/String;
    .end local v7    # "admin":I
    .end local v8    # "adminId":Ljava/lang/String;
    .end local v9    # "aid":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 1232
    const/4 v3, 0x1

    if-ne v14, v3, :cond_2

    .line 1237
    :cond_5
    if-eqz v15, :cond_6

    .line 1239
    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1245
    .end local v14    # "eventType":I
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1246
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1247
    .local v16, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1248
    .local v19, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string/jumbo v3, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PersistentApplet  key-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string/jumbo v3, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PersistentApplet  pluginName-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string/jumbo v3, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PersistentApplet  AID-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string/jumbo v3, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PersistentApplet  appletLocation-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string/jumbo v3, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PersistentApplet  adminId-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1240
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v13    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .restart local v14    # "eventType":I
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e1":Ljava/io/IOException;
    goto/16 :goto_1

    .line 1234
    .end local v11    # "e1":Ljava/io/IOException;
    .end local v14    # "eventType":I
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1235
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v20, "Error reading persistent applet info, starting from scratch"

    move-object/from16 v0, v20

    invoke-static {v3, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1237
    if-eqz v15, :cond_6

    .line 1239
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1240
    :catch_2
    move-exception v11

    .restart local v11    # "e1":Ljava/io/IOException;
    goto/16 :goto_1

    .line 1236
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1237
    if-eqz v15, :cond_7

    .line 1239
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1236
    :cond_7
    :goto_3
    throw v3

    .line 1240
    :catch_3
    move-exception v11

    .restart local v11    # "e1":Ljava/io/IOException;
    goto :goto_3

    .line 1187
    .end local v11    # "e1":Ljava/io/IOException;
    .restart local v13    # "entry$iterator":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method private readPersistentServicesLocked()V
    .locals 15

    .prologue
    .line 1289
    const-string/jumbo v12, "UcmService"

    const-string/jumbo v13, "readPersistentServicesLocked is called..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v5, 0x0

    .line 1293
    .local v5, "fis":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v12, :cond_0

    .line 1294
    const-string/jumbo v12, "UcmService"

    const-string/jumbo v13, "persistent service list is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return-void

    .line 1299
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    iput-boolean v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    .line 1300
    iget-boolean v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    if-eqz v12, :cond_2

    .line 1301
    return-void

    .line 1299
    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1305
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 1306
    .local v5, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1307
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v7, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1308
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 1309
    .local v4, "eventType":I
    :goto_1
    const/4 v12, 0x2

    if-eq v4, v12, :cond_3

    .line 1310
    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    .line 1311
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 1313
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1314
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "services"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1315
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 1317
    :cond_4
    const/4 v12, 0x2

    if-ne v4, v12, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 1318
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1319
    const-string/jumbo v12, "service"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1320
    const-string/jumbo v12, "uid"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1321
    .local v9, "uidString":Ljava/lang/String;
    const-string/jumbo v12, "uniqueId"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1322
    .local v10, "uniqueString":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    .end local v9    # "uidString":Ljava/lang/String;
    .end local v10    # "uniqueString":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1326
    const/4 v12, 0x1

    if-ne v4, v12, :cond_4

    .line 1331
    :cond_6
    if-eqz v5, :cond_7

    .line 1333
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1339
    .end local v4    # "eventType":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_2
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1340
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1341
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1342
    .local v11, "value":Ljava/lang/Integer;
    const-string/jumbo v12, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PersistentServices  key-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string/jumbo v12, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PersistentServices  value-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1334
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Integer;
    .restart local v4    # "eventType":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    goto :goto_2

    .line 1328
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v4    # "eventType":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v12, "UcmService"

    const-string/jumbo v13, "Error reading persistent services, starting from scratch"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1331
    if-eqz v5, :cond_7

    .line 1333
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1334
    :catch_2
    move-exception v1

    .restart local v1    # "e1":Ljava/io/IOException;
    goto :goto_2

    .line 1330
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 1331
    if-eqz v5, :cond_8

    .line 1333
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1330
    :cond_8
    :goto_4
    throw v12

    .line 1334
    :catch_3
    move-exception v1

    .restart local v1    # "e1":Ljava/io/IOException;
    goto :goto_4

    .line 1287
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    :cond_9
    return-void
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 822
    :try_start_0
    const-string/jumbo v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*****refreshAgentList userId-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is called***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    if-nez v1, :cond_0

    .line 824
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v3, "refreshAgentList system ready is not called yet. Ignoring agent refresh logic"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 828
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 829
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v5

    .line 830
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgentsLegacy(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v10

    .line 832
    .local v10, "resolveInfosLegacy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 833
    .local v2, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 835
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V

    .line 836
    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object v7, v2

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V

    .line 839
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 840
    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 841
    .local v12, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v1, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v1, :cond_1

    .line 842
    const-string/jumbo v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Removing unwanted agent- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    invoke-virtual {v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 839
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 848
    .end local v12    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 820
    .end local v2    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "resolveInfosLegacy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "i":I
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 848
    .restart local v2    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .restart local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "resolveInfosLegacy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "i":I
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 854
    .end local v2    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "resolveInfosLegacy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "i":I
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    .line 855
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exceptioon in refreshAgentList main- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V
    .locals 22
    .param p2, "userId"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p5, "legacy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .local p4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 862
    .local v3, "activatedPackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 864
    .local v8, "expiredPackage":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 865
    const-string/jumbo v19, "event"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 866
    .local v7, "event":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    .line 867
    const-string/jumbo v19, "packageName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 871
    .end local v3    # "activatedPackage":Ljava/lang/String;
    .end local v8    # "expiredPackage":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "event "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", activatedPackage-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",expiredPackage-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v7    # "event":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 874
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mPersistentServices size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 877
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 878
    .local v12, "name":Landroid/content/ComponentName;
    if-nez v12, :cond_4

    .line 879
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "name is empty"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 868
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "resolveInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "activatedPackage":Ljava/lang/String;
    .restart local v7    # "event":I
    .restart local v8    # "expiredPackage":Ljava/lang/String;
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 869
    const-string/jumbo v19, "packageName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "expiredPackage":Ljava/lang/String;
    goto/16 :goto_0

    .line 882
    .end local v3    # "activatedPackage":Ljava/lang/String;
    .end local v7    # "event":I
    .end local v8    # "expiredPackage":Ljava/lang/String;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    .line 883
    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v11, 0x0

    .line 884
    .local v11, "isValidAgent":Z
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 887
    .local v5, "agentPackageName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-------Processing started for agentPackageName----- -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eqz v8, :cond_5

    .line 889
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 890
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "agentPackageName -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1024
    :catch_0
    move-exception v6

    .line 1025
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exceptioon in refreshAgentList loop - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 895
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  agentPackageName -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is an active plugin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Check if caller has UCS Plugin permission..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 898
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforcePermission(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 899
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 901
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  agentPackageName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is system storage. Checking system signature"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_6

    .line 903
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  system storage found - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is not valid. Ignoring it..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 913
    :catch_1
    move-exception v16

    .line 914
    .local v16, "se":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  Exception se-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 906
    .end local v16    # "se":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  Valid system storage found is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 919
    :cond_7
    :try_start_5
    const-string/jumbo v19, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 921
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Old Bai solution is registered. Ignore binding to new Bai plugin..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 910
    :cond_8
    :try_start_6
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 925
    :cond_9
    :try_start_7
    const-string/jumbo v19, "com.sec.smartcard.manager"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 926
    const-string/jumbo v19, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 928
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "PCSC Service doesn\'t exist. Ignore binidng to old Bai plugin..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 931
    :cond_a
    const-string/jumbo v19, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 933
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "New Bai solution is installed. Ignore binding to old Bai plugin..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 939
    :cond_b
    const-string/jumbo v19, "com.samsung.ucs.agent.ese"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 941
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 942
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "Do not need to bind eSE Service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 947
    :cond_c
    const-string/jumbo v19, "com.samsung.ucs.agent.boot"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMODEEnabled()Z

    move-result v10

    .line 950
    .local v10, "isODEEnabled":Z
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMKeyguardEnabled(I)Z

    move-result v9

    .line 951
    .local v9, "isKeyguardEnabled":Z
    if-nez v10, :cond_d

    if-nez v9, :cond_d

    .line 952
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "Do not need to bind boot plugin service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 959
    .end local v9    # "isKeyguardEnabled":Z
    .end local v10    # "isODEEnabled":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 960
    if-eqz v14, :cond_e

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    .line 962
    :cond_e
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "resolveInfo null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 961
    :cond_f
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 965
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v4, v14, v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_15

    .line 968
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 969
    .local v18, "uniqueId":Ljava/lang/String;
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    move/from16 v17, v0

    .line 970
    .local v17, "serviceUid":I
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  Agent uniqueId-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " and serviceUid-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 973
    .local v13, "persistUid":I
    move/from16 v0, v17

    if-ne v13, v0, :cond_11

    .line 974
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Matched found in mPersistentServices map"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v11, 0x1

    .line 1013
    .end local v13    # "persistUid":I
    .end local v17    # "serviceUid":I
    .end local v18    # "uniqueId":Ljava/lang/String;
    :cond_10
    :goto_2
    if-eqz v11, :cond_18

    .line 1014
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  Adding new agent -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 977
    .restart local v13    # "persistUid":I
    .restart local v17    # "serviceUid":I
    .restart local v18    # "uniqueId":Ljava/lang/String;
    :cond_11
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  UID comparision failed for agent. Ignoring it.."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 980
    .end local v13    # "persistUid":I
    :cond_12
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 981
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v11, 0x1

    goto :goto_2

    .line 984
    :cond_13
    if-eqz v3, :cond_14

    .line 985
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 986
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  agentPackageName -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is an active plugin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 989
    :cond_14
    if-nez v3, :cond_10

    .line 990
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Agent entry is not in PersistentServices, but has proper permissions"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 996
    .end local v17    # "serviceUid":I
    .end local v18    # "uniqueId":Ljava/lang/String;
    :cond_15
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 998
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Adding system signed agent"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1001
    :cond_16
    if-eqz v3, :cond_17

    .line 1002
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1003
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  agentPackageName -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is an active plugin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1006
    :cond_17
    if-nez v3, :cond_10

    .line 1007
    const-string/jumbo v19, "UcmService"

    const-string/jumbo v20, "  Agent entry is not in PersistentServices, but has proper permissions"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1017
    :cond_18
    const-string/jumbo v19, "UcmService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Unbind agent -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    goto/16 :goto_1

    .line 1022
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 859
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "agentPackageName":Ljava/lang/String;
    .end local v11    # "isValidAgent":Z
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1a
    return-void
.end method

.method private registerPersonaObserver()V
    .locals 4

    .prologue
    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "registerPersonaObserver is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPersonaObserver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeMDMPolicies(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    const/4 v7, 0x0

    .line 712
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "removeMDMPolicies"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 714
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "invalid argument"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void

    .line 713
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 718
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", admin UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v4, v5, v7}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 721
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 722
    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-nez v0, :cond_2

    .line 723
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "Failed to get APP Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 726
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    const-string/jumbo v4, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 729
    const-string/jumbo v4, "com.baimobile.android.pcsclite.service"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    .line 734
    .local v3, "status":Z
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v3

    .line 737
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v3

    .line 740
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v0, p1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 743
    const-string/jumbo v4, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 745
    const-string/jumbo v4, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 711
    :cond_4
    return-void
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolveAllowedAgents for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    .line 1371
    const/16 v6, 0x80

    .line 1370
    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1372
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1373
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1374
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 1376
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 1378
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1379
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1383
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method public static resolveAllowedAgentsLegacy(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1351
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolveAllowedAgentsLegacy for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

    .line 1353
    const/16 v6, 0x80

    .line 1352
    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1354
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1355
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1356
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 1358
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 1360
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1361
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1365
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 3601
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3602
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3603
    .local v0, "csname":Ljava/lang/String;
    const-string/jumbo v5, "UCS_STATE"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3604
    const-string/jumbo v5, "UCS_CSNAME"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3605
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Broadcast CSNAME "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3609
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v5, :cond_0

    .line 3610
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 3612
    :cond_0
    const/4 v4, 0x0

    .line 3613
    .local v4, "personaIds":[I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v5, :cond_1

    .line 3614
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    .line 3616
    .end local v4    # "personaIds":[I
    :cond_1
    if-eqz v4, :cond_3

    .line 3617
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 3618
    aget v5, v4, v2

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3619
    const-string/jumbo v5, "KnoxKeyguardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send personaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.knox.kss"

    .line 3621
    const-string/jumbo v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    .line 3620
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3622
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    aget v7, v4, v2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3617
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3626
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 3627
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KnoxKeyguardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3600
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private sendUCMKeyguardIntent(ZILjava/lang/String;)V
    .locals 6
    .param p1, "set"    # Z
    .param p2, "userId"    # I
    .param p3, "storagePkg"    # Ljava/lang/String;

    .prologue
    .line 4302
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendUCMKeyguardIntent set - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", userId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", storage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4305
    .local v2, "ucmKeyguardIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 4306
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4310
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4311
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4312
    const-string/jumbo v3, "package_name"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4314
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4315
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "sendUCMKeyguardIntent intent sent to all..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 4308
    .restart local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4316
    .end local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4317
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 4252
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setKeyguardStorageForCurrentUser called : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const/4 v4, 0x0

    .line 4254
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 4255
    .local v0, "dataDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "system"

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4256
    .local v5, "systemDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4257
    .local v6, "userDir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "ucm_keyguardconfig.xml"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 4258
    const/4 v2, 0x0

    .line 4260
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 4261
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4262
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4263
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4264
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4265
    const-string/jumbo v7, "keyguard"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4266
    const-string/jumbo v7, "vendor"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4267
    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4268
    const-string/jumbo v7, "owner"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4269
    const-string/jumbo v7, "keyguard"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4270
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4271
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 4272
    if-nez p1, :cond_0

    .line 4273
    const-string/jumbo v7, "none"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4274
    const-string/jumbo v7, "persist.keyguard.ucs"

    const-string/jumbo v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V

    .line 4281
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 4288
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :goto_1
    return v4

    .line 4277
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const-string/jumbo v7, "persist.keyguard.ucs"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4282
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 4283
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4284
    if-eqz v2, :cond_1

    .line 4285
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private setODEConfigInFile(I)V
    .locals 9
    .param p1, "config"    # I

    .prologue
    .line 4752
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "setODEConfigInFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/efs/sec_efs"

    const-string/jumbo v8, "odeConfig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4754
    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 4755
    .local v3, "existFile":Z
    const/4 v4, 0x0

    .line 4757
    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4758
    .local v5, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v4    # "fis":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 4767
    .end local v5    # "fis":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 4769
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4751
    :cond_0
    :goto_1
    return-void

    .line 4762
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 4763
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v2, "e2":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v7, "UcmService"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4759
    .end local v2    # "e2":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 4760
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_3
    const-string/jumbo v7, "UcmService"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4770
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 4771
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "UcmService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4759
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e1":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .local v4, "fis":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 4762
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private updateKeyguardConfig(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5202
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "updateKeyguardConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5204
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    .line 5205
    .local v3, "keyguardUsed":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5206
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "remove useless keyguard config file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs"

    const-string/jumbo v5, "keyguardConfig"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5208
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 5209
    .local v1, "existFile":Z
    if-nez v1, :cond_2

    .line 5210
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "keyguard config file does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 5212
    .restart local v1    # "existFile":Z
    .restart local v2    # "keyguardConfigFile":Ljava/io/File;
    .restart local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "keyguard config file exist so delete it"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5216
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateMDMPolicies(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 679
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMDMPolicies userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "vendorName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 684
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "UCM keyguard is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 688
    :cond_0
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UCM keyguard is enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "onwerId":Ljava/lang/String;
    const/4 v0, -0x1

    .line 691
    .local v0, "configuratorId":I
    if-eqz v2, :cond_1

    .line 693
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 699
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 700
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "UCM Keyguard parsing failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0, v3, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 706
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "vendorPackageName":Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->removeMDMPolicies(Ljava/lang/String;I)V

    .line 678
    .end local v4    # "vendorPackageName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateSystemUIMonitor()V
    .locals 4

    .prologue
    .line 5295
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    .line 5296
    .local v1, "vendor":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v2, :cond_0

    .line 5298
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5294
    :cond_0
    :goto_0
    return-void

    .line 5299
    :catch_0
    move-exception v0

    .line 5300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "Exception occured on updateSystemUIMonitor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSystemUIMonitor(Ljava/lang/String;)V
    .locals 3
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 5285
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v1, :cond_0

    .line 5287
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5284
    :cond_0
    :goto_0
    return-void

    .line 5288
    :catch_0
    move-exception v0

    .line 5289
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "Exception occured on updateSystemUIMonitor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 4792
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPassword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4794
    :cond_0
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "uri is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    return v3

    .line 4798
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4799
    :cond_2
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "password is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    return v3

    .line 4805
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    .prologue
    .line 1153
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v4, 0x0

    .line 1157
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1158
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1159
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1160
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1161
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1162
    const-string/jumbo v7, "applets"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1163
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1164
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1165
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1166
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string/jumbo v7, "applet"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    const-string/jumbo v7, "appletLocation"

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1169
    const-string/jumbo v7, "pluginName"

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1170
    const-string/jumbo v7, "adminId"

    iget v8, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1171
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    .line 1172
    const-string/jumbo v7, "aid"

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1174
    :cond_0
    const-string/jumbo v7, "applet"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "Error writing accounts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    if-eqz v4, :cond_1

    .line 1182
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1152
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 1176
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "applets"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1177
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1178
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    .line 1262
    const/4 v3, 0x0

    .line 1264
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1265
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1266
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1267
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1268
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1269
    const-string/jumbo v5, "services"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "agent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1271
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v5, "service"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    const-string/jumbo v5, "uid"

    iget-object v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    const-string/jumbo v5, "uniqueId"

    iget-object v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    const-string/jumbo v5, "service"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1279
    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v1    # "agent$iterator":Ljava/util/Iterator;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v2

    .line 1280
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "Error writing accounts"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    if-eqz v3, :cond_0

    .line 1282
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1260
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 1276
    .restart local v1    # "agent$iterator":Ljava/util/Iterator;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "services"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1278
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xe

    .line 3851
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APDUCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3854
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3855
    :cond_0
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "uri is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3857
    return-object v1

    .line 3860
    :cond_1
    if-nez p2, :cond_2

    .line 3861
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "apdu is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3863
    return-object v1

    .line 3866
    :cond_2
    const/4 v0, 0x0

    .line 3867
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3868
    const-string/jumbo v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3873
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_4

    .line 3874
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3876
    return-object v1

    .line 3870
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3879
    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3880
    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3881
    .local v2, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3882
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3883
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3887
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3888
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3890
    return-object v1

    .line 3893
    :cond_6
    invoke-virtual {v0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3894
    if-nez v1, :cond_7

    .line 3895
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3897
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3898
    return-object v1

    .line 3900
    :cond_7
    return-object v1
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3587
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0x10

    .line 3747
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changePin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3750
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3751
    :cond_0
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "uri is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3753
    return-object v1

    .line 3756
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3757
    :cond_2
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "oldPin is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3759
    return-object v1

    .line 3762
    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3763
    :cond_4
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "newPin is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3765
    return-object v1

    .line 3768
    :cond_5
    const/4 v0, 0x0

    .line 3769
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3770
    const-string/jumbo v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3775
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_7

    .line 3776
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3778
    return-object v1

    .line 3772
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3781
    :cond_7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3782
    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3783
    .local v2, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3784
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3785
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3789
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3790
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3792
    return-object v1

    .line 3795
    :cond_9
    invoke-virtual {v0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3796
    if-nez v1, :cond_a

    .line 3797
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3799
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3800
    return-object v1

    .line 3803
    :cond_a
    return-object v1
.end method

.method public configureKeyguardSettings(ILjava/lang/String;)Z
    .locals 34
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 4322
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configureKeyguardSettings userId-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    const/16 v30, 0x0

    .line 4324
    .local v30, "result":Z
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4325
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "disable keyguard in UCS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v32

    .line 4327
    .local v32, "storageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4328
    .local v8, "storagePkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v28

    .line 4329
    .local v28, "onwerId":Ljava/lang/String;
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storageName - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", onwerId-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    const-string/jumbo v4, "none"

    const-string/jumbo v5, "none"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 4331
    .local v30, "result":Z
    if-eqz v30, :cond_1

    .line 4332
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    .line 4334
    :cond_1
    if-nez p1, :cond_3

    .line 4336
    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x0

    const/4 v9, -0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4340
    :goto_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v30    # "result":Z
    :goto_1
    return v30

    .line 4337
    .restart local v30    # "result":Z
    :catch_0
    move-exception v22

    .line 4338
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4340
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v30, 0x0

    goto :goto_1

    .line 4341
    :cond_3
    const/16 v4, 0x64

    move/from16 v0, p1

    if-lt v0, v4, :cond_4

    .line 4343
    :try_start_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 4345
    .local v9, "configuratorId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4346
    .local v24, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 4347
    .local v6, "ownerUid":I
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4349
    if-ne v6, v9, :cond_5

    .line 4350
    const/4 v5, 0x0

    const/4 v9, -0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    .line 4359
    .end local v6    # "ownerUid":I
    .end local v9    # "configuratorId":I
    .end local v24    # "id":J
    :cond_4
    :goto_2
    return v30

    .line 4353
    .restart local v6    # "ownerUid":I
    .restart local v9    # "configuratorId":I
    .restart local v24    # "id":J
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4355
    .end local v6    # "ownerUid":I
    .end local v9    # "configuratorId":I
    .end local v24    # "id":J
    :catch_1
    move-exception v22

    .line 4356
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 4362
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v28    # "onwerId":Ljava/lang/String;
    .end local v32    # "storageName":Ljava/lang/String;
    .local v30, "result":Z
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4363
    .local v21, "csName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v30    # "result":Z
    .local v20, "agent$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4364
    .local v19, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4365
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v4, :cond_7

    .line 4366
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v9

    .line 4367
    .restart local v9    # "configuratorId":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configuratorId - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    const/4 v4, -0x1

    if-ne v9, v4, :cond_8

    .line 4369
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "enforced null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    const/4 v4, 0x0

    return v4

    .line 4372
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 4373
    .local v30, "result":Z
    if-eqz v30, :cond_b

    .line 4374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 4376
    .local v26, "id2":J
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4377
    .restart local v8    # "storagePkgName":Ljava/lang/String;
    if-nez p1, :cond_d

    .line 4378
    const/4 v11, 0x1

    const/4 v15, -0x1

    move-object/from16 v10, p0

    move v12, v9

    move/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v30

    .line 4392
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v31

    .line 4393
    .local v31, "state":I
    if-eqz v31, :cond_a

    .line 4394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    .line 4397
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v5, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 4398
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4402
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4406
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v26    # "id2":J
    .end local v31    # "state":I
    :cond_b
    :goto_4
    if-nez p1, :cond_7

    .line 4407
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 4409
    .local v11, "csNameForProp":[B
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 4410
    .local v33, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v29

    .line 4411
    .local v29, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v29, :cond_c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 4412
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 4415
    :cond_c
    invoke-static/range {v33 .. v33}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v13

    .line 4416
    .local v13, "storageTypeIndex":I
    if-gez v13, :cond_f

    .line 4417
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UCM does not support this storage type for KG : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    const/4 v4, 0x0

    return v4

    .line 4379
    .end local v11    # "csNameForProp":[B
    .end local v13    # "storageTypeIndex":I
    .end local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v33    # "storageType":Ljava/lang/String;
    .restart local v8    # "storagePkgName":Ljava/lang/String;
    .restart local v26    # "id2":J
    :cond_d
    const/16 v4, 0x64

    move/from16 v0, p1

    if-lt v0, v4, :cond_9

    .line 4381
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4382
    .restart local v24    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 4383
    .restart local v6    # "ownerUid":I
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4385
    if-ne v6, v9, :cond_e

    .line 4386
    const/4 v11, 0x1

    const/4 v15, -0x1

    move-object/from16 v10, p0

    move v12, v6

    move/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v30

    goto/16 :goto_3

    .line 4389
    :cond_e
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    goto/16 :goto_3

    .line 4399
    .end local v6    # "ownerUid":I
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v24    # "id":J
    :catch_2
    move-exception v22

    .line 4400
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4402
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 4401
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 4402
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4401
    throw v4

    .line 4421
    .end local v26    # "id2":J
    .restart local v11    # "csNameForProp":[B
    .restart local v13    # "storageTypeIndex":I
    .restart local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .restart local v33    # "storageType":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 4422
    .local v23, "enabledSCP":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v14

    .line 4423
    .local v14, "scpIndex":I
    if-gez v14, :cond_10

    .line 4424
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UCM does not support this SCP type : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    const/4 v4, 0x0

    return v4

    .line 4428
    :cond_10
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v15, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4429
    .local v15, "pinMinLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v16, v0

    .line 4430
    .local v16, "pinMaxLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v17, v0

    .line 4431
    .local v17, "pukMinLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v18, v0

    .line 4433
    .local v18, "pukMaxLength":I
    new-instance v10, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    invoke-direct/range {v10 .. v18}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .line 4434
    .local v10, "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v4

    if-eqz v4, :cond_11

    .end local v30    # "result":Z
    :goto_5
    return v30

    .restart local v30    # "result":Z
    :cond_11
    const/16 v30, 0x0

    goto :goto_5

    .line 4439
    .end local v9    # "configuratorId":I
    .end local v10    # "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v11    # "csNameForProp":[B
    .end local v13    # "storageTypeIndex":I
    .end local v14    # "scpIndex":I
    .end local v15    # "pinMinLength":I
    .end local v16    # "pinMaxLength":I
    .end local v17    # "pukMinLength":I
    .end local v18    # "pukMaxLength":I
    .end local v19    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v23    # "enabledSCP":Ljava/lang/String;
    .end local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v30    # "result":Z
    .end local v33    # "storageType":Ljava/lang/String;
    :cond_12
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configureKeyguardSettings return : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    return v30
.end method

.method public configureODESettings(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 36
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "scpParam"    # Landroid/os/Bundle;

    .prologue
    .line 4445
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "configureODESettings"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    const-string/jumbo v33, "ro.crypto.state"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4447
    .local v10, "crypto_state":Ljava/lang/String;
    const-string/jumbo v33, "ro.vold.forceencryption"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4448
    .local v17, "force_crypto_state":Ljava/lang/String;
    const-string/jumbo v33, "ro.boot.ucs_mode"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4449
    .local v31, "ucs_flag":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4450
    .local v3, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v32

    .line 4451
    .local v32, "uriuid":I
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v28

    .line 4452
    .local v28, "source":Ljava/lang/String;
    const-string/jumbo v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "configureODESettings uriuid-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    const-string/jumbo v33, "encrypted"

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    const-string/jumbo v33, "1"

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 4458
    :cond_0
    const-string/jumbo v33, "2"

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 4459
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "device is encrypted with UCS so cannot change configuration"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    const v33, 0xc000200

    return v33

    .line 4455
    :cond_1
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "device is encrypted state in non-default encryption device."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    const v33, 0xc000200

    return v33

    .line 4463
    :cond_2
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v12

    .line 4464
    .local v12, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    iget-object v0, v12, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    .line 4465
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "configureODESettings Validating current ODE setting configurator"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v8

    .line 4467
    .local v8, "callingPkg":[B
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v9

    .line 4468
    .local v9, "callingPkgSign":[B
    if-eqz v8, :cond_5

    .line 4469
    iget-object v0, v12, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v33

    if-eqz v33, :cond_4

    iget-object v0, v12, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 4476
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "configureODESettings valid caller is changing ODE configuration..."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    .end local v8    # "callingPkg":[B
    .end local v9    # "callingPkgSign":[B
    :cond_3
    const-string/jumbo v33, "reset"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 4480
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "disable configureODESettings in UCS"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    const-string/jumbo v33, "persist.security.ucs"

    const-string/jumbo v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4482
    const-string/jumbo v33, "persist.security.ucs.csname"

    const-string/jumbo v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v13

    .line 4484
    .local v13, "delete":Z
    if-eqz v13, :cond_6

    .line 4485
    const/16 v33, 0x0

    return v33

    .line 4470
    .end local v13    # "delete":Z
    .restart local v8    # "callingPkg":[B
    .restart local v9    # "callingPkgSign":[B
    :cond_4
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    const v33, 0xc000300

    return v33

    .line 4474
    :cond_5
    const v33, 0xc000300

    return v33

    .line 4487
    .end local v8    # "callingPkg":[B
    .end local v9    # "callingPkgSign":[B
    .restart local v13    # "delete":Z
    :cond_6
    const/16 v33, 0x10d

    return v33

    .line 4490
    .end local v13    # "delete":Z
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_8

    .line 4491
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "uri is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    const/16 v33, 0x10

    return v33

    .line 4495
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    if-nez v33, :cond_a

    .line 4496
    :cond_9
    const/16 v33, 0xe

    return v33

    .line 4499
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4500
    .local v21, "pluginName":Ljava/lang/String;
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_c

    .line 4501
    :cond_b
    const/16 v33, 0xe

    return v33

    .line 4504
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "agent$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4505
    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 4508
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 4509
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "Find UcmAgentWrapper"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    move/from16 v33, v0

    if-nez v33, :cond_e

    .line 4512
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "This agent dose not support ODE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    const/16 v33, 0x3

    return v33

    .line 4516
    :cond_e
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 4517
    .local v2, "AID":[B
    if-eqz v2, :cond_f

    array-length v0, v2

    move/from16 v33, v0

    if-nez v33, :cond_10

    .line 4518
    :cond_f
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "AID is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    const/16 v33, 0x4

    return v33

    .line 4520
    :cond_10
    array-length v0, v2

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_11

    array-length v0, v2

    move/from16 v33, v0

    const/16 v34, 0x10

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_12

    .line 4521
    :cond_11
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "AID range is not proper"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    const/16 v33, 0x4

    return v33

    .line 4525
    :cond_12
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 4526
    .local v29, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v22

    .line 4527
    .local v22, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v22, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_13

    .line 4528
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 4530
    :cond_13
    invoke-static/range {v29 .. v29}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v30

    .line 4531
    .local v30, "storageTypeIndex":I
    if-gez v30, :cond_14

    .line 4532
    const-string/jumbo v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "UCM does not support this storage type : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    const/16 v33, 0x4

    return v33

    .line 4536
    :cond_14
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v15, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4537
    .local v15, "enabledSCP":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4538
    .local v26, "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v27

    .line 4539
    .local v27, "scpIndex":I
    if-gez v27, :cond_15

    .line 4540
    const-string/jumbo v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "UCM does not support this SCP type : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    const/16 v33, 0x4

    return v33

    .line 4542
    :cond_15
    const-string/jumbo v33, "NONE"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_16

    .line 4545
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v26

    .line 4546
    .local v26, "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    if-nez v26, :cond_16

    .line 4547
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "Can\'t find SCP parameter from bundle"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4548
    const/16 v33, 0x4

    return v33

    .line 4550
    .end local v26    # "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :catch_0
    move-exception v14

    .line 4551
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 4552
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "failed to generate SCP param from Bundle"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_16
    const-string/jumbo v33, "persist.security.ucs"

    const-string/jumbo v34, "1"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    const-string/jumbo v33, "persist.security.ucs.csname"

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    move/from16 v16, v0

    .line 4561
    .local v16, "enabledWrap":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    move/from16 v20, v0

    .line 4562
    .local v20, "pinMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v19, v0

    .line 4563
    .local v19, "pinMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4564
    .local v7, "authMode":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4565
    .local v6, "authMaxCnt":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v24, v0

    .line 4566
    .local v24, "pukMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v23, v0

    .line 4567
    .local v23, "pukMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 4568
    .local v11, "csName":[B
    if-eqz v11, :cond_17

    array-length v0, v11

    move/from16 v33, v0

    if-nez v33, :cond_18

    .line 4569
    :cond_17
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, "csName is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    const/16 v33, 0x4

    return v33

    .line 4573
    :cond_18
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v18

    .line 4575
    .local v18, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 4576
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 4577
    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 4578
    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 4579
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 4580
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 4581
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 4582
    move-object/from16 v0, v18

    iput v7, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 4583
    move-object/from16 v0, v18

    iput v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 4584
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 4585
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 4586
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 4587
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 4588
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 4590
    if-eqz v26, :cond_19

    .line 4591
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4598
    :cond_19
    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v25

    .line 4599
    .local v25, "save":Z
    if-eqz v25, :cond_1a

    .line 4600
    const-string/jumbo v33, "security.knox_ucs_mode"

    const-string/jumbo v34, "true"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    const/16 v33, 0x0

    return v33

    .line 4593
    .end local v25    # "save":Z
    :catch_1
    move-exception v14

    .line 4594
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 4595
    const-string/jumbo v33, "UcmService"

    const-string/jumbo v34, " failed to convert SCP param to TLV"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4603
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v25    # "save":Z
    :cond_1a
    const/16 v33, 0x10d

    return v33

    .line 4606
    .end local v2    # "AID":[B
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v6    # "authMaxCnt":I
    .end local v7    # "authMode":I
    .end local v11    # "csName":[B
    .end local v15    # "enabledSCP":Ljava/lang/String;
    .end local v16    # "enabledWrap":I
    .end local v18    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v19    # "pinMaxLength":I
    .end local v20    # "pinMinLength":I
    .end local v22    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v23    # "pukMaxLength":I
    .end local v24    # "pukMinLength":I
    .end local v25    # "save":Z
    .end local v27    # "scpIndex":I
    .end local v29    # "storageType":Ljava/lang/String;
    .end local v30    # "storageTypeIndex":I
    :cond_1b
    const/16 v33, 0xe

    return v33
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 5091
    .local v11, "callerUid":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 5093
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "containsAlias "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5094
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 5095
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 5096
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5097
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5098
    return-object v10

    .line 5102
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5103
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 5104
    .local v5, "uriuid":I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    move v5, v11

    .line 5105
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 5106
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 5107
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 5108
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5110
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5111
    return-object v10

    .line 5113
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5117
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5118
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5120
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5121
    return-object v10

    .line 5123
    :cond_3
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v9, v2, v0, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    .line 5124
    if-nez v10, :cond_4

    .line 5125
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 5127
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5128
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5129
    return-object v10

    .line 5131
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 5132
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    return-object v10
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 10
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1732
    const-string/jumbo v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createSecureChannel protocolType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1734
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1735
    const-string/jumbo v6, "UcmService"

    const-string/jumbo v7, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1737
    .local v1, "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    const/4 v6, 0x1

    iput v6, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1738
    const/16 v6, 0x41

    iput v6, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1739
    return-object v1

    .line 1741
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1742
    const-string/jumbo v6, "UcmService"

    const-string/jumbo v7, "Invalid protocolType..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return-object v9

    .line 1745
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1747
    .local v2, "id":J
    :try_start_0
    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1748
    .local v4, "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    if-nez v4, :cond_2

    .line 1756
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1749
    return-object v9

    .line 1751
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v6, v5, p1, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1756
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1751
    return-object v6

    .line 1752
    .end local v4    # "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :catch_0
    move-exception v0

    .line 1753
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in createSecureChannel -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1756
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1758
    return-object v9

    .line 1755
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1756
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    throw v6
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2181
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2184
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2185
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2186
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2187
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2191
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2192
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2193
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 2194
    .local v17, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 2195
    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 2196
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2197
    :cond_1
    move/from16 v5, v17

    .line 2201
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2202
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v16

    .line 2203
    .local v16, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    const/16 v16, 0x1

    .line 2205
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2206
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v18

    .line 2207
    .local v18, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 2208
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2209
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Decrypt new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    .end local v18    # "userId":I
    :cond_4
    :goto_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2218
    .local v11, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2219
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2220
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2222
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2211
    .end local v11    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "id":J
    .restart local v18    # "userId":I
    :cond_5
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Decrypt. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2224
    .end local v18    # "userId":I
    .restart local v11    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2228
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2229
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2230
    const-string/jumbo v2, "resource"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2232
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2239
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2241
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2244
    :cond_7
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2245
    if-nez v10, :cond_8

    .line 2246
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2248
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2249
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2251
    :cond_8
    const-string/jumbo v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 2252
    .local v13, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2253
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    if-nez v13, :cond_9

    .line 2255
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2257
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2259
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 809
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    if-eqz p1, :cond_0

    .line 811
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    .line 808
    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2845
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2846
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2852
    const-string/jumbo v3, "deleteCertificate"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2853
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2854
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2855
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2856
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v3, "booleanresponse"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2857
    const-string/jumbo v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2858
    return-object v0

    .line 2860
    :cond_0
    const-string/jumbo v3, "booleanresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2861
    .local v2, "response":Z
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2862
    .local v1, "errorcode":I
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteCertificate Response:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    return-object v0
.end method

.method public destroySecureChannel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1802
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "destroySecureChannel ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1804
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1805
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const/16 v4, 0x41

    return v4

    .line 1809
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1811
    .local v2, "id":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1815
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1811
    return v4

    .line 1812
    :catch_0
    move-exception v0

    .line 1813
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in destroySecureChannel -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1815
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    const/4 v4, 0x1

    return v4

    .line 1814
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1815
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1814
    throw v4
.end method

.method public generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 1823
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateDek "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1828
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v4, "generateDek"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1836
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1829
    :catch_0
    move-exception v2

    .line 1830
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1831
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1832
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1841
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1842
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1843
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1848
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 1849
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1851
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1845
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 1855
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1856
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1858
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1860
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1861
    if-nez v1, :cond_5

    .line 1862
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1864
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1865
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1867
    :cond_5
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1868
    .local v3, "errorcode":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateDek response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2957
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2960
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2961
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2962
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "bytearrayresponse"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2963
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2964
    return-object v6

    .line 2966
    :cond_0
    const-string/jumbo v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 2967
    .local v8, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2968
    .local v7, "errorcode":I
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    return-object v6
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2938
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const-string/jumbo v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2941
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2942
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2943
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2944
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "bytearrayresponse"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2945
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2946
    return-object v6

    .line 2948
    :cond_0
    const-string/jumbo v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 2949
    .local v8, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2950
    .local v7, "errorcode":I
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    return-object v6
.end method

.method public generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    .line 2036
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateKeyguardPassword "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2039
    .local v1, "agentResponse":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 2040
    .local v3, "password":[B
    if-eqz p2, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2041
    :cond_0
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2043
    return-object v1

    .line 2046
    :cond_1
    const/4 v0, 0x0

    .line 2047
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v5, "boot_test"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2048
    const-string/jumbo v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 2053
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 2054
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2056
    return-object v1

    .line 2050
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 2060
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2061
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "agent is not bound"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2063
    return-object v1

    .line 2066
    :cond_4
    invoke-virtual {v0, p1, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2067
    if-nez v1, :cond_5

    .line 2068
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "ERROR: Null Response received from agent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2070
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2071
    return-object v1

    .line 2073
    :cond_5
    const-string/jumbo v5, "bytearrayresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2074
    .local v3, "password":[B
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2075
    .local v2, "errorcode":I
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    if-eqz v3, :cond_6

    array-length v5, v3

    if-lez v5, :cond_6

    .line 2078
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 2079
    .local v4, "strAscii":Ljava/lang/String;
    const-string/jumbo v5, "stringresponse"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const/4 v3, 0x0

    .line 2081
    .local v3, "password":[B
    const-string/jumbo v4, ""

    .line 2084
    .end local v3    # "password":[B
    .end local v4    # "strAscii":Ljava/lang/String;
    :cond_6
    return-object v1
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3278
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3280
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3281
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3282
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3284
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3285
    return-object v10

    .line 3289
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3290
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3291
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 3292
    .local v17, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 3293
    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    .line 3294
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 3295
    move/from16 v5, v17

    .line 3299
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3300
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v16

    .line 3301
    .local v16, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    const/16 v16, 0x1

    .line 3304
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3305
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 3306
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3308
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3309
    return-object v10

    .line 3311
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3314
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3315
    .local v11, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3316
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3317
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3318
    const-string/jumbo v2, "resource"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3320
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3327
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3329
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3330
    return-object v10

    .line 3332
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 3333
    if-nez v10, :cond_5

    .line 3334
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3336
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3337
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3338
    return-object v10

    .line 3340
    :cond_5
    const-string/jumbo v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 3341
    .local v13, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 3342
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    if-nez v13, :cond_6

    .line 3345
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3347
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3348
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3349
    return-object v10

    .line 3351
    :cond_6
    return-object v10
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 1874
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateDek "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1879
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v4, "generateWrappedDek"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1887
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1889
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1880
    :catch_0
    move-exception v2

    .line 1881
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1882
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1883
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1892
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1893
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1894
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1899
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 1900
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1902
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1896
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 1906
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1907
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1911
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1912
    if-nez v1, :cond_5

    .line 1913
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1915
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1916
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1918
    :cond_5
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1919
    .local v3, "errorcode":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5142
    if-nez p1, :cond_0

    .line 5143
    return-object v5

    .line 5145
    :cond_0
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finding active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "agent$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5147
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5148
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    return-object v0

    .line 5152
    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    return-object v5
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3538
    const-string/jumbo v2, "getAdminConfigureBundleFromCs"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3539
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3541
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3543
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3544
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no agent found for Source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    const-string/jumbo v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3546
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3547
    return-object v10

    .line 3551
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3552
    .local v12, "id":J
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3553
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 3554
    .local v5, "uriuid":I
    move/from16 v14, p2

    .line 3555
    .local v14, "user_id":I
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3556
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    const-string/jumbo v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3558
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3559
    return-object v10

    .line 3561
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3565
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3566
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    const-string/jumbo v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3568
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3569
    return-object v10

    .line 3571
    :cond_2
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3572
    if-nez v10, :cond_3

    .line 3573
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3575
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3576
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3577
    return-object v10

    .line 3579
    :cond_3
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 3580
    .local v11, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    return-object v10
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2603
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2604
    .local v7, "agentInfoBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .line 2607
    .local v8, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2608
    .local v6, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2609
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 2610
    .local v12, "uriuid":I
    if-eq v12, v1, :cond_0

    .line 2611
    if-eq v3, v12, :cond_0

    .line 2612
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_0

    .line 2613
    move v3, v12

    .line 2617
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2618
    .local v2, "user_id":I
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .line 2619
    .local v9, "uriresource":I
    if-ne v9, v1, :cond_1

    const/4 v9, 0x1

    .line 2622
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2623
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2624
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    return-object v5

    .line 2627
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    .line 2631
    return-object v7
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2095
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2099
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2100
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2101
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2103
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2107
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2109
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 2110
    .local v17, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 2111
    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 2112
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2113
    :cond_1
    move/from16 v5, v17

    .line 2117
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2118
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v16

    .line 2119
    .local v16, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    const/16 v16, 0x1

    .line 2121
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2122
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v18

    .line 2123
    .local v18, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 2124
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2125
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    .end local v18    # "userId":I
    :cond_4
    :goto_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2134
    .local v11, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2135
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2136
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2138
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2127
    .end local v11    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "id":J
    .restart local v18    # "userId":I
    :cond_5
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    .end local v18    # "userId":I
    .restart local v11    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2143
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2144
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2146
    const-string/jumbo v2, "resource"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2148
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2155
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2157
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2159
    :cond_7
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2160
    if-nez v10, :cond_8

    .line 2161
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2163
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2164
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2166
    :cond_8
    const-string/jumbo v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 2167
    .local v13, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2168
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    if-nez v13, :cond_9

    .line 2171
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2173
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 2175
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3531
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3532
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3533
    return-object v0
.end method

.method public getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x0

    .line 3384
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3385
    .local v1, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3386
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 3387
    const-string/jumbo v2, "bundleresponse"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3388
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3389
    return-object v1

    .line 3393
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3394
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const-string/jumbo v2, "bundleresponse"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3396
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3397
    return-object v1

    .line 3399
    :cond_1
    invoke-virtual {v0, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3400
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "getCredentialStorageProperty Response from plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    return-object v1
.end method

.method public getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 1925
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDek "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1930
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v4, "getDek"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1938
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1940
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1931
    :catch_0
    move-exception v2

    .line 1932
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1933
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1934
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1942
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Checking uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const/4 v0, 0x0

    .line 1946
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1947
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1952
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 1953
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1955
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1949
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 1959
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1960
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1962
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1963
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1966
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1967
    if-nez v1, :cond_5

    .line 1968
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1970
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1971
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1973
    :cond_5
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1974
    .local v3, "errorcode":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDek Response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4
.end method

.method public getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4810
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDetailErrorMessage uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4812
    :cond_0
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "uri is not proper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    return-object v4

    .line 4816
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 4817
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_2

    .line 4818
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "Cannot find agent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    return-object v4

    .line 4822
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4823
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "agent is not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    return-object v4

    .line 4827
    :cond_3
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xe

    .line 3905
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3908
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3909
    :cond_0
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "uri is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    const-string/jumbo v3, "errorresponse"

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3911
    return-object v1

    .line 3914
    :cond_1
    const/4 v0, 0x0

    .line 3915
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3916
    const-string/jumbo v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3921
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 3922
    const-string/jumbo v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3924
    return-object v1

    .line 3918
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3927
    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3928
    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3929
    .local v2, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3930
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3931
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3935
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3936
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3938
    return-object v1

    .line 3941
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 3942
    if-nez v1, :cond_6

    .line 3943
    const-string/jumbo v3, "UcmService"

    const-string/jumbo v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3945
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3946
    return-object v1

    .line 3948
    :cond_6
    return-object v1
.end method

.method public getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    .locals 16
    .param p1, "userId"    # I

    .prologue
    .line 3952
    const-string/jumbo v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getKeyguardStorageForCurrentUser : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 3954
    .local v1, "dataDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v13, "system"

    invoke-direct {v9, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3955
    .local v9, "systemDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "users/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3956
    .local v11, "userDir":Ljava/io/File;
    new-instance v13, Landroid/util/AtomicFile;

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "ucm_keyguardconfig.xml"

    invoke-direct {v14, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v13, v14}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 3957
    const/4 v6, 0x0

    .line 3958
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3959
    .local v7, "isFileExist":Z
    const/4 v12, 0x0

    .line 3960
    .local v12, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v7

    .line 3961
    .local v7, "isFileExist":Z
    const-string/jumbo v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isFileExist : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    if-nez v7, :cond_0

    .line 3963
    const/4 v13, 0x0

    return-object v13

    .line 3966
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 3967
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 3968
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v8, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3969
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 3970
    .local v5, "eventType":I
    :goto_0
    const/4 v13, 0x2

    if-eq v5, v13, :cond_1

    const/4 v13, 0x1

    if-eq v5, v13, :cond_1

    .line 3971
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 3973
    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3974
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "keyguard"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3975
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 3977
    .end local v12    # "vendorName":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x2

    if-ne v5, v13, :cond_3

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 3978
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3979
    const-string/jumbo v13, "vendor"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3980
    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3983
    :cond_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3984
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    .line 3996
    :cond_4
    if-eqz v6, :cond_5

    .line 3998
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4004
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v12

    .line 3999
    .restart local v5    # "eventType":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 4000
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3992
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 3994
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3996
    if-eqz v6, :cond_5

    .line 3998
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3999
    :catch_2
    move-exception v3

    .line 4000
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3989
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 3991
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3996
    if-eqz v6, :cond_5

    .line 3998
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3999
    :catch_4
    move-exception v3

    .line 4000
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3986
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v2

    .line 3988
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3996
    if-eqz v6, :cond_5

    .line 3998
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 3999
    :catch_6
    move-exception v3

    .line 4000
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3995
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 3996
    if-eqz v6, :cond_6

    .line 3998
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 3995
    :cond_6
    :goto_2
    throw v13

    .line 3999
    :catch_7
    move-exception v3

    .line 4000
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4734
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "getODESettingsConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 4738
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v0, :cond_0

    .line 4739
    return-object v4

    .line 4742
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4744
    .local v1, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "supportsode"

    iget v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4745
    const-string/jumbo v2, "aid"

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4746
    const-string/jumbo v2, "storagetype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    const-string/jumbo v2, "scptype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4749
    return-object v1
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4838
    const-string/jumbo v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getStatus : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4840
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4841
    :cond_0
    const-string/jumbo v10, "UcmService"

    const-string/jumbo v11, "csName is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    const-string/jumbo v10, "errorresponse"

    const/16 v11, 0x10

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4843
    return-object v1

    .line 4846
    :cond_1
    const/4 v9, -0x1

    .line 4847
    .local v9, "state":I
    const/4 v8, -0x1

    .line 4848
    .local v8, "remainCnt":I
    const/4 v3, -0x1

    .line 4849
    .local v3, "maxCnt":I
    const/4 v5, -0x1

    .line 4850
    .local v5, "pinMinLength":I
    const/4 v4, -0x1

    .line 4851
    .local v4, "pinMaxLength":I
    const/4 v2, 0x0

    .line 4852
    .local v2, "authMode":I
    const/4 v7, -0x1

    .line 4853
    .local v7, "pukMinLength":I
    const/4 v6, -0x1

    .line 4855
    .local v6, "pukMaxLength":I
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 4856
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v10, "boot_test"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4857
    const-string/jumbo v10, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 4862
    :goto_0
    if-nez v0, :cond_3

    .line 4863
    const-string/jumbo v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no agent found for Source = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    const-string/jumbo v10, "errorresponse"

    const/16 v11, 0xe

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4865
    return-object v1

    .line 4859
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_0

    .line 4867
    :cond_3
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v10, :cond_4

    .line 4868
    const-string/jumbo v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no agent info found for Source = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    const-string/jumbo v10, "errorresponse"

    const/16 v11, 0xe

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4870
    return-object v1

    .line 4873
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v10

    if-nez v10, :cond_5

    .line 4874
    const-string/jumbo v10, "UcmService"

    const-string/jumbo v11, "agent is not bound"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4876
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v10, "errorresponse"

    const/16 v11, 0xe

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4877
    return-object v1

    .line 4880
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getStatus()Landroid/os/Bundle;

    move-result-object v1

    .line 4881
    if-nez v1, :cond_6

    .line 4882
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4883
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v10, "UcmService"

    const-string/jumbo v11, "ERROR: Null Response received from agent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    const-string/jumbo v10, "errorresponse"

    const/16 v11, 0xd

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4885
    return-object v1

    .line 4888
    :cond_6
    const-string/jumbo v10, "UcmService"

    const-string/jumbo v11, "getStatus success"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    const-string/jumbo v10, "state"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 4890
    const-string/jumbo v10, "remainCnt"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 4891
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4892
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4893
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v4, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 4894
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v2, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4895
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 4896
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 4898
    const-string/jumbo v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "values get from agent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4899
    const-string/jumbo v12, " "

    .line 4898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    const-string/jumbo v10, "maxAuthCnt"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4902
    const-string/jumbo v10, "maxPinLength"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4903
    const-string/jumbo v10, "minPinLength"

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4904
    const-string/jumbo v10, "authMode"

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4905
    const-string/jumbo v10, "minPukLength"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4906
    const-string/jumbo v10, "maxPukLength"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4908
    return-object v1
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3262
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 3264
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3265
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    const/4 v0, 0x0

    return v0

    .line 3268
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2744
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2745
    .local v6, "pluginResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    return-object v6
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2751
    const-string/jumbo v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2753
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2754
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2755
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2756
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2757
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2758
    return-object v6

    .line 2760
    :cond_0
    const-string/jumbo v0, "booleanresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2761
    .local v8, "response":Z
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2762
    .local v7, "errorcode":I
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCertificate Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    return-object v6
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2031
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3273
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1579
    const-string/jumbo v16, "UcmService"

    const-string/jumbo v17, "isUserCertificatesExistInUCS called"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const-string/jumbo v16, "isUserCertificatesExistInUCS"

    invoke-static/range {v16 .. v16}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1582
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1583
    .local v8, "agentResponse":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1584
    .local v9, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 1586
    .local v15, "user_id":I
    const-string/jumbo v16, "callerUid"

    const/16 v17, 0x3e8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1587
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1588
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1589
    .local v14, "newParamBundle":Landroid/os/Bundle;
    const-string/jumbo v16, "removable_user_certificates_list"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1590
    const-string/jumbo v16, "extraArgs"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1592
    const-string/jumbo v16, "UcmService"

    const-string/jumbo v17, "Iteration has started...."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1595
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v2, :cond_0

    .line 1598
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v16

    if-eqz v16, :cond_1

    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1599
    :cond_1
    const-string/jumbo v16, "UcmService"

    const-string/jumbo v17, "agent is not bound or not ready"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1604
    const-string/jumbo v16, "UcmService"

    const-string/jumbo v17, "activeAgent is CSobscure"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1609
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1610
    .local v12, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v11

    .line 1611
    .local v11, "mdmAliases":[Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1614
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1615
    .local v5, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v16, "resource"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1616
    invoke-virtual {v2, v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1617
    const/4 v4, 0x0

    .line 1618
    .local v4, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1619
    const-string/jumbo v16, "stringarrayresponse"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1621
    .end local v4    # "agentAliasesKeyChain":[Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 1622
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1625
    :cond_5
    if-eqz v11, :cond_7

    .line 1626
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    .line 1627
    aget-object v16, v11, v10

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1628
    aget-object v16, v11, v10

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1626
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1634
    .end local v10    # "i":I
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    .line 1635
    const/16 v16, 0x1

    return v16

    .line 1639
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v6, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v16, "resource"

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1641
    invoke-virtual {v2, v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1642
    const/4 v7, 0x0

    .line 1643
    .local v7, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 1644
    const-string/jumbo v16, "stringarrayresponse"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1645
    .end local v7    # "agentAliasesWiFi":[Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    .line 1646
    invoke-static {v6, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1649
    :cond_a
    if-eqz v11, :cond_c

    .line 1650
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_c

    .line 1651
    aget-object v16, v11, v10

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1652
    aget-object v16, v11, v10

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1650
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1657
    .end local v10    # "i":I
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1658
    const/16 v16, 0x1

    return v16

    .line 1661
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "mdmAliases":[Ljava/lang/String;
    .end local v12    # "id1":J
    :cond_d
    const/16 v16, 0x0

    return v16
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3145
    const-string/jumbo v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders(I)[Ljava/lang/String;
    .locals 12
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3219
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "listPasswordSupportedProviders : userid -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3221
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v7

    .line 3222
    .local v7, "user_id":I
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 3223
    return-object v11

    .line 3225
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3226
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3227
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 3229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3230
    .local v4, "id":J
    new-instance v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v3}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3231
    .local v3, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3232
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3233
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3234
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "listPasswordSupportedProviders :  cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3241
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 3242
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCredentialStorageEnabledForLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3243
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "password support provider enabled as a lock type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 3236
    :cond_3
    const-string/jumbo v8, "UcmService"

    const-string/jumbo v9, "Package name for CS found NULL. Ignoring CS"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3246
    :cond_4
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v8, :cond_5

    .line 3247
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Credential Storage not enabled as a lock type -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3249
    :cond_5
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NON Password Supported Credential Storage -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3253
    :cond_6
    const-string/jumbo v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NON managed provider -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3257
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v4    # "id":J
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1419
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyChangeToPlugin event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string/jumbo v7, "notifyChangeToPlugin"

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1421
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1423
    .local v3, "agentResponse":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1424
    .local v4, "error":Z
    if-nez p1, :cond_5

    .line 1425
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1426
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1429
    const/4 v6, 0x0

    .line 1430
    .local v6, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    .line 1431
    .local v5, "notify":Z
    if-eqz v5, :cond_1

    .line 1432
    invoke-virtual {v0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v6

    .line 1433
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "activeAgent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " notify status - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_1
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "activeAgent status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    if-nez v4, :cond_0

    .line 1440
    if-eqz v6, :cond_0

    .line 1441
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0x12

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1442
    const/4 v4, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "activeAgent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not notified"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1445
    .end local v5    # "notify":Z
    .end local v6    # "status":I
    :cond_2
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0xe

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1446
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "agentService is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1450
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_3
    if-nez v4, :cond_4

    .line 1451
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1453
    :cond_4
    const-string/jumbo v7, "booleanresponse"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1454
    return-object v3

    .line 1456
    .end local v1    # "activeAgent$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 1457
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v2, :cond_6

    .line 1458
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no agent found for Source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const-string/jumbo v7, "booleanresponse"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1460
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0xe

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    return-object v3

    .line 1464
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1465
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v6

    .line 1466
    .restart local v6    # "status":I
    if-nez v6, :cond_7

    .line 1467
    const-string/jumbo v7, "booleanresponse"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1468
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1469
    return-object v3

    .line 1471
    :cond_7
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0x12

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1477
    .end local v6    # "status":I
    :goto_2
    const-string/jumbo v7, "booleanresponse"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1478
    return-object v3

    .line 1474
    :cond_8
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0xe

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1475
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "agent is not bound"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    const/4 v5, 0x1

    .line 1666
    const-string/jumbo v2, "notifyLicenseStatus"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1667
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyLicenseStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",status-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errorCode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1669
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1670
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1673
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1674
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1675
    iput-boolean v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    .line 1677
    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1678
    return v5
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5033
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 5035
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 5036
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 5037
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5038
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5039
    return-object v10

    .line 5043
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5044
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5045
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v14

    .line 5046
    .local v14, "uriuid":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_1

    .line 5047
    if-eq v5, v14, :cond_1

    .line 5048
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 5049
    move v5, v14

    .line 5053
    :cond_1
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 5055
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5056
    .local v12, "id":J
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 5057
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5059
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5060
    return-object v10

    .line 5062
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5066
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5067
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5069
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5070
    return-object v10

    .line 5072
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1, v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v10

    .line 5073
    if-nez v10, :cond_4

    .line 5074
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 5076
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5077
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5078
    return-object v10

    .line 5080
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 5081
    .local v11, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    return-object v10
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 10
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1763
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processMessage type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1765
    .local v4, "uid":I
    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1766
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1768
    .local v1, "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1769
    const/16 v5, 0x41

    iput v5, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1770
    return-object v1

    .line 1773
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1774
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "Invalid message Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1776
    .restart local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1777
    const/16 v5, 0x40

    iput v5, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1778
    return-object v1

    .line 1781
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_1
    if-nez p2, :cond_2

    .line 1782
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "message byte is null.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1784
    .restart local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1785
    const/16 v5, 0x32

    iput v5, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1786
    return-object v1

    .line 1788
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1790
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1794
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    return-object v5

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in processMessage -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    return-object v9

    .line 1793
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1794
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    throw v5
.end method

.method public declared-synchronized publishService()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 5172
    :try_start_0
    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5173
    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5174
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 5171
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 803
    return-void
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .prologue
    .line 5306
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 5307
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor()V

    .line 5305
    return-void
.end method

.method public removeEnforcedLockTypeNotification(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 5257
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEnforcedLockTypeNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5259
    .local v0, "notiMgr":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 5260
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    return-void

    .line 5263
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5264
    .local v1, "uh":Landroid/os/UserHandle;
    add-int/lit16 v2, p1, 0x1f40

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 5256
    return-void
.end method

.method public resetNonMdmCertificates()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1488
    const-string/jumbo v17, "UcmService"

    const-string/jumbo v18, "resetNonMdmCertificates called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string/jumbo v17, "resetNonMdmCertificates"

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1491
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1492
    .local v8, "agentResponse":Landroid/os/Bundle;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1493
    .local v11, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v16

    .line 1495
    .local v16, "user_id":I
    const-string/jumbo v17, "callerUid"

    const/16 v18, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1496
    const-string/jumbo v17, "user_id"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    const-string/jumbo v17, "UcmService"

    const-string/jumbo v18, "Iteration has started...."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1501
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v2, :cond_0

    .line 1504
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v17

    if-eqz v17, :cond_1

    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1505
    :cond_1
    const-string/jumbo v17, "UcmService"

    const-string/jumbo v18, "agent is not bound or not ready"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1509
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1510
    const-string/jumbo v17, "UcmService"

    const-string/jumbo v18, "activeAgent is CSobscure"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v5, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v6, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1519
    invoke-virtual {v2, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1520
    const/4 v4, 0x0

    .line 1521
    .local v4, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1522
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1523
    .end local v4    # "agentAliasesKeyChain":[Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 1524
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1528
    :cond_5
    const-string/jumbo v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1529
    invoke-virtual {v2, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1530
    const/4 v7, 0x0

    .line 1531
    .local v7, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 1532
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1533
    .end local v7    # "agentAliasesWiFi":[Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    .line 1534
    invoke-static {v6, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1537
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1538
    const-string/jumbo v17, "UcmService"

    const-string/jumbo v18, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1543
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1544
    .local v14, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v13

    .line 1545
    .local v13, "mdmAliases":[Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    if-eqz v13, :cond_b

    .line 1549
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_b

    .line 1550
    aget-object v17, v13, v12

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1551
    aget-object v17, v13, v12

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1549
    :cond_9
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1552
    :cond_a
    aget-object v17, v13, v12

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1553
    aget-object v17, v13, v12

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1559
    .end local v12    # "i":I
    :cond_b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "alias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1560
    .local v9, "alias":Ljava/lang/String;
    const-string/jumbo v17, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request to delete KEYCHAIN for alias: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string/jumbo v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1562
    invoke-virtual {v2, v9, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_3

    .line 1566
    .end local v9    # "alias":Ljava/lang/String;
    :cond_c
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1567
    .restart local v9    # "alias":Ljava/lang/String;
    const-string/jumbo v17, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request to delete WIFI for alias: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const-string/jumbo v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1569
    invoke-virtual {v2, v9, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    .line 1487
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "alias$iterator":Ljava/util/Iterator;
    .end local v13    # "mdmAliases":[Ljava/lang/String;
    .end local v14    # "id1":J
    :cond_d
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4975
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 4977
    .local v8, "agentResponse":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .line 4978
    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    .line 4979
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4980
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4981
    return-object v8

    .line 4985
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4986
    .local v6, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4987
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 4988
    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 4989
    if-eq v3, v12, :cond_1

    .line 4990
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_1

    .line 4991
    move v3, v12

    .line 4995
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 4997
    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4998
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4999
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5001
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xf

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5002
    return-object v8

    .line 5004
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5008
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5009
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "agent is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5011
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5012
    return-object v8

    .line 5014
    :cond_3
    invoke-virtual {v7, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUid(I)Landroid/os/Bundle;

    move-result-object v8

    .line 5015
    if-nez v8, :cond_4

    .line 5016
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "ERROR: Null Response received from agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    new-instance v8, Landroid/os/Bundle;

    .end local v8    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 5018
    .restart local v8    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5019
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5020
    return-object v8

    .line 5022
    :cond_4
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 5023
    .local v9, "errorcode":I
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUid Response from plugin:  error code = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    return-object v8
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4917
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUser "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 4919
    .local v8, "agentResponse":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .line 4920
    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    .line 4921
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4922
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4923
    return-object v8

    .line 4927
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4928
    .local v6, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4929
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 4930
    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 4931
    if-eq v3, v12, :cond_1

    .line 4932
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_1

    .line 4933
    move v3, v12

    .line 4937
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 4939
    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4940
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4941
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4943
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xf

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4944
    return-object v8

    .line 4946
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4950
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4951
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "agent is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4953
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4954
    return-object v8

    .line 4956
    :cond_3
    invoke-virtual {v7, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUser(I)Landroid/os/Bundle;

    move-result-object v8

    .line 4957
    if-nez v8, :cond_4

    .line 4958
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "ERROR: Null Response received from agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    new-instance v8, Landroid/os/Bundle;

    .end local v8    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 4960
    .restart local v8    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4961
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4962
    return-object v8

    .line 4964
    :cond_4
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 4965
    .local v9, "errorcode":I
    const-string/jumbo v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUser Response from plugin:  error code = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    return-object v8
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 39
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2264
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/16 v20, 0x0

    .line 2266
    .local v20, "error":Z
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2269
    .local v11, "agentResponse":Landroid/os/Bundle;
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2270
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2271
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v34

    .line 2272
    .local v34, "uriuid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2273
    .local v4, "user_id":I
    const/4 v2, -0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_1

    .line 2274
    move/from16 v0, v34

    if-eq v5, v0, :cond_1

    .line 2275
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_0

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2276
    :cond_0
    move/from16 v5, v34

    .line 2280
    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v33

    .line 2281
    .local v33, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_2

    .line 2282
    const/16 v33, 0x1

    .line 2284
    :cond_2
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2286
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2287
    const-string/jumbo v2, "user_id"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2288
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2289
    const-string/jumbo v2, "resource"

    move/from16 v0, v33

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2290
    const-string/jumbo v2, "entryType"

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2292
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "resource"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_USER_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "user_id"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_CALLER_UID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "callerUid"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "KNOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2299
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    .local v23, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Iteration has started.... uid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "activeAgent$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2302
    .local v3, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v3, :cond_3

    .line 2306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2307
    .local v26, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 2308
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2310
    const/16 v20, 0x1

    .line 2311
    goto :goto_0

    .line 2313
    :cond_4
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2316
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2317
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v6, "activeAgent is not bound"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2319
    const/16 v20, 0x1

    .line 2320
    goto :goto_0

    .line 2324
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2325
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v6, "skipping obscure activeAgent"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2329
    :cond_6
    invoke-virtual {v3, v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 2330
    if-nez v11, :cond_7

    .line 2331
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v6, "ERROR: Null Response received from activeAgent"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    new-instance v11, Landroid/os/Bundle;

    .end local v11    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2333
    .restart local v11    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2334
    const/16 v20, 0x1

    .line 2335
    goto/16 :goto_0

    .line 2338
    :cond_7
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2339
    .local v12, "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 2340
    .local v21, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    if-eqz v12, :cond_3

    .line 2347
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Agent alias size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const/4 v2, 0x0

    array-length v6, v12

    :goto_1
    if-ge v2, v6, :cond_8

    aget-object v13, v12, v2

    .line 2349
    .local v13, "alias":Ljava/lang/String;
    const-string/jumbo v7, "UcmService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Agent alias-"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2352
    .end local v13    # "alias":Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2353
    .local v22, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    .local v31, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    .local v32, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2358
    .local v28, "id1":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v30

    .line 2360
    .local v30, "mdmallowedaliases":[Ljava/lang/String;
    const/16 v36, 0x0

    .line 2361
    .local v36, "wifiCert":[Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, v33

    if-ne v0, v2, :cond_d

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_d

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v36

    .line 2363
    .local v36, "wifiCert":[Ljava/lang/String;
    if-eqz v36, :cond_d

    move-object/from16 v0, v36

    array-length v2, v0

    if-lez v2, :cond_d

    .line 2364
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v18, "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v36

    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_a

    aget-object v17, v36, v2

    .line 2366
    .local v17, "certAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2367
    const-string/jumbo v7, "UcmService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "saw : Found wifi certAlias-"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2365
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2371
    .end local v17    # "certAlias":Ljava/lang/String;
    :cond_a
    if-eqz v30, :cond_c

    move-object/from16 v0, v30

    array-length v2, v0

    if-lez v2, :cond_c

    .line 2372
    const/4 v2, 0x0

    move-object/from16 v0, v30

    array-length v6, v0

    :goto_3
    if-ge v2, v6, :cond_c

    aget-object v35, v30, v2

    .line 2373
    .local v35, "whitelistedAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2374
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2372
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2378
    .end local v35    # "whitelistedAlias":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "mdmallowedaliases":[Ljava/lang/String;
    check-cast v30, [Ljava/lang/String;

    .line 2382
    .end local v18    # "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "wifiCert":[Ljava/lang/String;
    .restart local v30    # "mdmallowedaliases":[Ljava/lang/String;
    :cond_d
    if-nez v30, :cond_11

    .line 2383
    const/16 v31, 0x0

    .line 2384
    .local v31, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    .end local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v25

    .line 2392
    .local v25, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2395
    if-eqz v25, :cond_e

    move-object/from16 v0, v25

    array-length v2, v0

    if-nez v2, :cond_12

    .line 2396
    :cond_e
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is = null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const/16 v32, 0x0

    .line 2413
    .end local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :goto_5
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2414
    .restart local v22    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Initial agent alias list for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    if-eqz v32, :cond_16

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_16

    .line 2416
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_16

    .line 2417
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2418
    .restart local v13    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v13, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2419
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2420
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_10
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 2386
    .end local v13    # "alias":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v25    # "mdmaliases":[Ljava/lang/String;
    .local v31, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    .line 2387
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2398
    .end local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "mdmaliases":[Ljava/lang/String;
    :cond_12
    if-eqz v30, :cond_13

    move-object/from16 v0, v30

    array-length v2, v0

    if-nez v2, :cond_14

    .line 2399
    :cond_13
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    .line 2400
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2402
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    :goto_7
    if-ge v2, v6, :cond_f

    aget-object v13, v25, v2

    .line 2403
    .restart local v13    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v31

    invoke-virtual {v7, v13, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 2404
    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    const-string/jumbo v7, "UcmService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2407
    :cond_15
    const-string/jumbo v7, "UcmService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2425
    .end local v13    # "alias":Ljava/lang/String;
    .end local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "alias$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2426
    .restart local v13    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2427
    .local v9, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v19

    .line 2428
    .local v19, "csUri":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2434
    .end local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v9    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v12    # "agentaliases":[Ljava/lang/String;
    .end local v13    # "alias":Ljava/lang/String;
    .end local v14    # "alias$iterator":Ljava/util/Iterator;
    .end local v19    # "csUri":Ljava/lang/String;
    .end local v21    # "errorcode":I
    .end local v22    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "mdmaliases":[Ljava/lang/String;
    .end local v26    # "id":J
    .end local v28    # "id1":J
    .end local v30    # "mdmallowedaliases":[Ljava/lang/String;
    :cond_17
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 2435
    .local v16, "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2436
    if-nez v20, :cond_18

    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2437
    :cond_18
    return-object v11

    .line 2441
    .end local v10    # "activeAgent$iterator":Ljava/util/Iterator;
    .end local v16    # "array":[Ljava/lang/String;
    .end local v23    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 2442
    .restart local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v3, :cond_1a

    .line 2443
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2444
    return-object v11

    .line 2447
    :cond_1a
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2448
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v6, "activeAgent is not bound"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2450
    return-object v11

    .line 2453
    :cond_1b
    invoke-virtual {v3, v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 2454
    if-nez v11, :cond_1c

    .line 2455
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v6, "ERROR: Null Response received from activeAgent"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    new-instance v11, Landroid/os/Bundle;

    .end local v11    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2457
    .restart local v11    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2458
    return-object v11

    .line 2460
    :cond_1c
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2461
    .restart local v12    # "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2462
    .restart local v21    # "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_1d

    .line 2467
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v11, v2, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2468
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2469
    return-object v11

    .line 2472
    :cond_1d
    const/4 v2, 0x3

    move/from16 v0, v33

    if-eq v0, v2, :cond_1e

    .line 2474
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2475
    return-object v11

    .line 2479
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2480
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v11, v2, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2481
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2482
    return-object v11

    .line 2486
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2487
    .restart local v26    # "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    .line 2488
    const-string/jumbo v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2490
    return-object v11

    .line 2493
    :cond_20
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2494
    .restart local v22    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2495
    .restart local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2497
    .restart local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v12, :cond_21

    .line 2498
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2499
    return-object v11

    .line 2502
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v30

    .line 2503
    .restart local v30    # "mdmallowedaliases":[Ljava/lang/String;
    if-nez v30, :cond_25

    .line 2504
    const/16 v31, 0x0

    .line 2510
    .end local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v25

    .line 2511
    .restart local v25    # "mdmaliases":[Ljava/lang/String;
    if-eqz v25, :cond_22

    move-object/from16 v0, v25

    array-length v2, v0

    if-nez v2, :cond_26

    .line 2512
    :cond_22
    const/16 v32, 0x0

    .line 2523
    .end local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_23
    :goto_b
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2526
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 2527
    if-eqz v32, :cond_2a

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 2528
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_c
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_2a

    .line 2529
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2530
    .restart local v13    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v13, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2531
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2528
    :cond_24
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 2506
    .end local v13    # "alias":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v25    # "mdmaliases":[Ljava/lang/String;
    .restart local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    goto :goto_a

    .line 2513
    .end local v31    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "mdmaliases":[Ljava/lang/String;
    :cond_26
    if-eqz v30, :cond_27

    move-object/from16 v0, v30

    array-length v2, v0

    if-nez v2, :cond_28

    .line 2514
    :cond_27
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    goto :goto_b

    .line 2516
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    :goto_d
    if-ge v2, v6, :cond_23

    aget-object v13, v25, v2

    .line 2517
    .restart local v13    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v31

    invoke-virtual {v7, v13, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 2518
    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2516
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2536
    .end local v13    # "alias":Ljava/lang/String;
    .end local v32    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2537
    .restart local v23    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "alias$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2538
    .restart local v13    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2539
    .restart local v9    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v19

    .line 2541
    .restart local v19    # "csUri":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2543
    .end local v9    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v13    # "alias":Ljava/lang/String;
    .end local v19    # "csUri":Ljava/lang/String;
    :cond_2b
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 2544
    .restart local v16    # "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2545
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2546
    return-object v11
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    .line 2554
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sawInternal() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; resourceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2556
    .local v2, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "sawInternal"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2558
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 2559
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 2560
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "sawInternal(): activeAgent == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2562
    return-object v2

    .line 2566
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2567
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "agent is not bound"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    return-object v2

    .line 2572
    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2573
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "activeAgent is CSobscure"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2575
    return-object v2

    .line 2578
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2579
    .local v4, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "callerUid"

    const/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2580
    const-string/jumbo v5, "user_id"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2581
    const-string/jumbo v5, "resource"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2583
    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 2584
    if-nez v2, :cond_3

    .line 2585
    const-string/jumbo v5, "UcmService"

    const-string/jumbo v6, "ERROR: Null Response received from activeAgent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2587
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2588
    return-object v2

    .line 2590
    :cond_3
    const-string/jumbo v5, "stringarrayresponse"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2591
    .local v1, "agentAliases":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2592
    const-string/jumbo v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sawInternal() agentAliases.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v3, v1, v5

    .line 2594
    .local v3, "alias":Ljava/lang/String;
    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sawInternal() agentAliases="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2597
    .end local v3    # "alias":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 21
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3422
    const-string/jumbo v4, "setAdminConfigureBundleForCs"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3424
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3425
    .local v12, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    if-nez p4, :cond_0

    .line 3427
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3429
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3430
    return-object v12

    .line 3433
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 3434
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_1

    .line 3435
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3437
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3438
    return-object v12

    .line 3442
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3443
    .local v16, "id":J
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3444
    .local v10, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3445
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 3446
    .local v18, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_2

    .line 3447
    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    .line 3448
    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_2

    .line 3449
    move/from16 v7, v18

    .line 3453
    :cond_2
    move/from16 v20, p2

    .line 3455
    .local v20, "user_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 3456
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3458
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3459
    return-object v12

    .line 3461
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3464
    const-string/jumbo v4, "applet_location"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3465
    .local v13, "appletLocation":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 3466
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(ILjava/lang/String;)Z

    move-result v19

    .line 3467
    .local v19, "usedPlugin":Z
    if-eqz v19, :cond_4

    .line 3468
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "the plugin already is used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3470
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x22

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3471
    return-object v12

    .line 3473
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3474
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3475
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x19

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3476
    return-object v12

    .line 3481
    .end local v19    # "usedPlugin":Z
    :cond_5
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3482
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3484
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3485
    return-object v12

    .line 3487
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v12

    .line 3488
    if-nez v12, :cond_7

    .line 3489
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3491
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3493
    return-object v12

    .line 3495
    :cond_7
    const-string/jumbo v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 3496
    .local v15, "response":I
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3497
    .local v14, "errorcode":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    return-object v12
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2663
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2666
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2667
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2668
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2669
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2670
    return-object v10

    .line 2674
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2676
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 2677
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    .line 2678
    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    .line 2679
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 2680
    move/from16 v5, v18

    .line 2684
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2685
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 2686
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 2688
    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v2, "admin_id"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v13, 0x0

    .line 2691
    .local v13, "ismdmcaller":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2692
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2693
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2695
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2696
    return-object v10

    .line 2688
    .end local v13    # "ismdmcaller":Z
    .end local v14    # "id":J
    :cond_4
    const/4 v13, 0x1

    .restart local v13    # "ismdmcaller":Z
    goto :goto_0

    .line 2698
    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2701
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2702
    .local v11, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2703
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2704
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2705
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2706
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2708
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2715
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2717
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2718
    return-object v10

    .line 2721
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2722
    if-nez v10, :cond_7

    .line 2723
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2725
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2726
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2727
    return-object v10

    .line 2729
    :cond_7
    const-string/jumbo v2, "booleanresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 2730
    .local v16, "response":Z
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2731
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    if-nez v16, :cond_8

    if-nez v12, :cond_8

    .line 2734
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const-string/jumbo v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2736
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2737
    return-object v10

    .line 2739
    :cond_8
    return-object v10
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 3407
    const-string/jumbo v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfigureBundleForCs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3409
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez p3, :cond_0

    .line 3410
    const-string/jumbo v1, "UcmService"

    const-string/jumbo v2, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3412
    const-string/jumbo v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3413
    return-object v0

    .line 3415
    :cond_0
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3416
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3417
    return-object v0
.end method

.method public setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "option"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xe

    const/4 v4, -0x1

    .line 3359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3360
    .local v1, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3361
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 3362
    const-string/jumbo v2, "intresponse"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3363
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3364
    return-object v1

    .line 3368
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3369
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const-string/jumbo v2, "intresponse"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3371
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3372
    return-object v1

    .line 3374
    :cond_1
    invoke-virtual {v0, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3375
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "setCredentialStorageProperty Response from plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    return-object v1
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xe

    .line 3808
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    const-string/jumbo v2, "setState"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3810
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3812
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 3813
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3815
    return-object v1

    .line 3818
    :cond_0
    const/4 v0, 0x0

    .line 3819
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v2, "boot_test"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3820
    const-string/jumbo v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3825
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_2

    .line 3826
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no agent found for Source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3828
    return-object v1

    .line 3822
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3832
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3833
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3835
    return-object v1

    .line 3838
    :cond_3
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setState(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3839
    if-nez v1, :cond_4

    .line 3840
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3842
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3843
    return-object v1

    .line 3846
    :cond_4
    return-object v1
.end method

.method public showEnforcedLockTypeNotification(ILjava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 5223
    const-string/jumbo v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showEnforcedLockTypeNotification : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 5225
    .local v4, "notiMgr":Landroid/app/NotificationManager;
    if-nez v4, :cond_0

    .line 5226
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "Failed to get NotificationManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    return-void

    .line 5230
    :cond_0
    :try_start_0
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5231
    .local v8, "uh":Landroid/os/UserHandle;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 5232
    .local v6, "notification":Landroid/app/Notification;
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Landroid/app/Notification;->when:J

    .line 5233
    const/16 v9, 0x20

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 5235
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5236
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "CS_NAME"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5237
    const-string/jumbo v9, "USER_ID"

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5239
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v9, p1, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 5240
    .local v7, "pi":Landroid/app/PendingIntent;
    const v9, 0x1080027

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 5241
    const-string/jumbo v5, ""

    .line 5242
    .local v5, "notiTitle":Ljava/lang/String;
    if-eqz p2, :cond_2

    const-string/jumbo v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_0
    if-nez v9, :cond_1

    .line 5243
    const-string/jumbo v9, ":"

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5244
    .local v1, "index":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_1

    .line 5245
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5248
    .end local v1    # "index":I
    :cond_1
    const-string/jumbo v3, "Please set the screen lock type with the smartcard."

    .line 5249
    .local v3, "notiMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9, v5, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 5250
    add-int/lit16 v9, p1, 0x1f40

    invoke-virtual {v4, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5222
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notiMessage":Ljava/lang/String;
    .end local v5    # "notiTitle":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "uh":Landroid/os/UserHandle;
    :goto_1
    return-void

    .line 5242
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "notiTitle":Ljava/lang/String;
    .restart local v6    # "notification":Landroid/app/Notification;
    .restart local v7    # "pi":Landroid/app/PendingIntent;
    .restart local v8    # "uh":Landroid/os/UserHandle;
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 5251
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "notiTitle":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 5252
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UcmService"

    const-string/jumbo v10, "handled expected Exception in showEnforcedLockTypeNotification()."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3053
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3055
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3056
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3057
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3059
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3060
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 3064
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3065
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3066
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 3067
    .local v17, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 3068
    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 3069
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3070
    :cond_1
    move/from16 v5, v17

    .line 3074
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3075
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v16

    .line 3076
    .local v16, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    const/16 v16, 0x1

    .line 3078
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3079
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v18

    .line 3080
    .local v18, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 3081
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 3082
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    .end local v18    # "userId":I
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3090
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 3091
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3093
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3094
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 3084
    .end local v14    # "id":J
    .restart local v18    # "userId":I
    :cond_5
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "sign user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3096
    .end local v18    # "userId":I
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3099
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3100
    .local v11, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3101
    const-string/jumbo v2, "user_id"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3102
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3103
    const-string/jumbo v2, "resource"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3105
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3112
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3114
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3115
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 3117
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 3118
    if-nez v10, :cond_8

    .line 3119
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3121
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3122
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3123
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 3125
    :cond_8
    const-string/jumbo v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 3126
    .local v13, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 3127
    .local v12, "errorcode":I
    const-string/jumbo v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    if-nez v13, :cond_9

    .line 3130
    const-string/jumbo v2, "UcmService"

    const-string/jumbo v3, "ERROR: Empty data received for sign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    const-string/jumbo v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3132
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3133
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 3135
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    const-string/jumbo v0, "UcmService"

    const-string/jumbo v1, "systemReady is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    .line 363
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermissionInstalledMDM()V

    .line 364
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    return-void
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 1980
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unwrapDek "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1985
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v4, "unwrapDek"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1993
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1995
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1986
    :catch_0
    move-exception v2

    .line 1987
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1988
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1989
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 1998
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1999
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2000
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 2005
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_3

    .line 2006
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2008
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 2002
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 2011
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2012
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2014
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 2017
    :cond_4
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    .line 2018
    if-nez v1, :cond_5

    .line 2019
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2021
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2022
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    .line 2024
    :cond_5
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2025
    .local v3, "errorcode":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4
.end method

.method public updateAgentList()V
    .locals 2

    .prologue
    .line 4833
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4831
    return-void
.end method

.method public verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x85

    const/16 v9, 0x10

    const/16 v8, 0xe

    const/4 v7, -0x1

    .line 3634
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyPin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3637
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3638
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3640
    return-object v1

    .line 3643
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3644
    :cond_2
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "pin is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3646
    return-object v1

    .line 3649
    :cond_3
    const/4 v0, 0x0

    .line 3650
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3651
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3656
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_5

    .line 3657
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3659
    return-object v1

    .line 3653
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3662
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3663
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3665
    return-object v1

    .line 3668
    :cond_6
    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3669
    if-nez v1, :cond_7

    .line 3670
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3672
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3673
    return-object v1

    .line 3676
    :cond_7
    const-string/jumbo v4, "state"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3677
    .local v3, "state":I
    const-string/jumbo v4, "remainCnt"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3678
    .local v2, "remainCnt":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const/16 v4, 0x83

    if-ne v3, v4, :cond_8

    .line 3681
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 3684
    :cond_8
    if-ne v3, v10, :cond_9

    .line 3685
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "state changed to blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    invoke-direct {p0, v10, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    .line 3689
    :cond_9
    return-object v1
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xe

    const/4 v7, -0x1

    .line 3694
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyPuk : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3697
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3698
    :cond_0
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3700
    return-object v1

    .line 3703
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3704
    :cond_2
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "pin is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3706
    return-object v1

    .line 3709
    :cond_3
    const/4 v0, 0x0

    .line 3710
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string/jumbo v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3711
    const-string/jumbo v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3716
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_0
    if-nez v0, :cond_5

    .line 3717
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3719
    return-object v1

    .line 3713
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_0

    .line 3723
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3724
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3726
    return-object v1

    .line 3729
    :cond_6
    invoke-virtual {v0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3730
    if-nez v1, :cond_7

    .line 3731
    const-string/jumbo v4, "UcmService"

    const-string/jumbo v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3733
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3734
    return-object v1

    .line 3737
    :cond_7
    const-string/jumbo v4, "state"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3738
    .local v3, "state":I
    const-string/jumbo v4, "remainCnt"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3739
    .local v2, "remainCnt":I
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const-string/jumbo v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    return-object v1
.end method
